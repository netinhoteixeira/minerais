unit unitBlobFields;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, TASeries, SQLite3tablemod;

procedure CSVFileToBlobField(Path, Table, Field, Especie, Rruff_id, Digito,
  Tipo: String);
function SelectBlobFieldToJPEGImage(Table, Field, Especie, Rruff_id, Digito,
  Tipo: String):TJPEGImage;
function SelectBlobFieldToChartSeries(Table, Field, Especie, Rruff_id, Digito,
  Tipo:String):TLineSeries;
function SelectBlobFieldToCSVFile(Table, Field, Especie, Rruff_id, Digito,
  Tipo, Equipment:String):String;  //retirar equipment?
procedure AddBlobFieldSample(FileNameDatabase, FileNameImage ,Table, Field,
  Sample_id, Digito, Tipo:String);
procedure AddBlobFieldMineral(FilenameDatabase, FileNameImage,Table, Field,
  Especie_Tipo: String);
procedure ClearBlobField(Table, Field, Especie, Rruff_id, Digito, Tipo:String);

var
  MS: TMemoryStream;
  FS:TFileStream;
  pic: TJPEGImage;

implementation

uses uDataModule, unitGraficos;

procedure CSVFileToBlobField(Path, Table, Field, Especie, Rruff_id, Digito,
  Tipo: String);
begin
  Try
  FS := TFileStream.Create(Path, fmOpenRead);
  if Table = 'chemistry' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '";', FS);
    end
    else
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '";', FS);
    end;
  end
  else
  if Table = 'raman' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'direcao="'+Tipo+'" ;', FS);
    end
    else
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'direcao="'+Tipo+'" ;', FS);
    end;
  end
  else
  if Table = 'varredura' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'comprimento_onda="'+Tipo+'" ;', FS);
    end
    else
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'comprimento_onda="'+Tipo+'" ;', FS);
    end;
  end
  else
  if Table = 'infravermelho' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;', FS);
    end
    else
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;',
          FS);
    end;
  end
  else
  if Table = 'difracao' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;', FS);
    end
    else
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;',
          FS);
    end;
  end;

  finally
    FS.Free;
  end;
end;
          //obs: equipamento
function SelectBlobFieldToJPEGImage(Table, Field, Especie, Rruff_id, Digito,
  Tipo: String): TJPEGImage;
var I:Boolean;
begin
  if Table = 'minerais' then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE nome = "' + Especie + '" ;');
    I:=True;
  end
  else
  if Table = 'mineralogia' then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE campo = "' + Tipo + '" ;');
    I:=True;
  end
  else
  if Table = 'rruff' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE rruff_id = "' + Rruff_id + '" ;');
      I:=False;
    end
    else
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE especie ="'+Especie+'" AND rruff_id = "' + Rruff_id + '" ;');
      I:=False;
    end;
  end
  else
  if Table = 'chemistry' then
  begin
    if Especie = EmptyStr then
    begin
       Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE rruff_id = "' + Rruff_id + '" AND digito="'+Digito+'";');
       I:=False;
    end
    else
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE especie ="'+Especie+'" AND rruff_id = "' + Rruff_id + '" '+
        'AND digito="'+Digito+'";');
      I:=False;
    end;
  end;

  if I then
  begin
   if Dados.TableMinerals.RowCount > 0 then
    begin
    Try
      MS := Dados.TableMinerals.FieldAsBlob(Dados.TableMinerals.
        FieldIndex[Field]);
      if (MS <> nil) then
      begin
        MS.Position := 0;
        pic := TJPEGImage.Create;
        pic.LoadFromStream(MS);
        Result := pic;
      end
      else
      begin
        Result := nil;
      end;
    finally
    end;
    end
    else
      Result:=nil;
  end
  else
  begin
      if Dados.TableSamples.RowCount > 0 then
    begin
    Try
      MS := Dados.TableSamples.FieldAsBlob(Dados.TableSamples.
        FieldIndex[Field]);
      if (MS <> nil) then
      begin
        MS.Position := 0;
        pic := TJPEGImage.Create;
        pic.LoadFromStream(MS);
        Result := pic;
      end
      else
      begin
        Result := nil;
      end;
    finally
    end;
    end
    else
      Result:=nil;
  end;
end;

function SelectBlobFieldToChartSeries(Table, Field, Especie, Rruff_id, Digito,
  Tipo: String): TLineSeries;
var Diretorio:String;
begin
  Diretorio:=EmptyStr;
  if Table = 'raman' then
  begin
    if Especie = EmptyStr then //equipment sera utilizado em FormFichaAmostra
    begin                      //apos plotar o grafico
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT rruff_id, '+Field+', direcao, equipment FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" AND direcao="' + Tipo + '" ;');
    end
    else
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT '+Field+', especie, rruff_id, direcao, equipment FROM '+
          Table+' WHERE especie="'+Especie+'" AND rruff_id ="'+Rruff_id +
            '" AND digito="'+ Digito+'" AND direcao="' + Tipo +'" ;');
    end;
  end
  else
  if Table = 'varredura' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT rruff_id, '+Field+', comprimento_onda, equipment FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" AND comprimento_onda="' + Tipo + '";');
    end
    else
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT especie, rruff_id, '+Field+', comprimento_onda, equipment FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" AND comprimento_onda="' + Tipo + '" ;');
    end;
  end
  else
  if Table = 'infravermelho' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT rruff_id, '+Field+', equipment FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" ;');
    end
    else
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT especie, rruff_id, '+Field+', equipment FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" ;');
    end;
  end
  else
  if Table = 'difracao' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT rruff_id, '+Field+' FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" ;');
    end
    else
    begin
       Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT especie, rruff_id, '+Field+' FROM '+
          Table+ ' WHERE rruff_id ="'+Rruff_id +'" AND digito="'+
            Digito+'" ;');
    end;
  end;
  if Dados.TableSamples.RowCount > 0 then
  begin
    MS := Dados.TableSamples.FieldAsBlob(Dados.TableSamples.FieldIndex[Field]);
    if MS <> nil then
    begin
      MS.Position := 0;
      MS.SaveToFile(GetCurrentDir + '\Data\'+Field+'.csv');
      Diretorio := GetCurrentDir + '\Data\'+Field+'.csv';
    end;
    Result:=PlotarGrafico(Diretorio, 'Azul');
  end
  else
    Result:=PlotarGrafico(EmptyStr, 'Azul');

end;

function SelectBlobFieldToCSVFile(Table, Field, Especie, Rruff_id, Digito,
  Tipo, Equipment: String): String;
begin
  if Table = 'chemistry' then
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE digito ="' + Digito + '" and rruff_id ="' + Rruff_id + '" ;');
  end
  else
  if Table = 'raman' then
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE  rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'" AND direcao="'+Tipo+'" ;');
  end
  else
  if Table= 'varredura' then
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'" AND comprimento_onda="'+Tipo+'" ;');
  end
  else
  if Table = 'infravermelho' then
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'";');
  end
  else
  if Table = 'difracao' then
  begin
    Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'";');
  end;
  if Dados.TableSamples.RowCount > 0 then
  begin
    MS := Dados.TableSamples.FieldAsBlob(Dados.TableSamples.FieldIndex[Field]);
    if MS <> nil then
    begin
      MS.Position := 0;
      MS.SaveToFile(GetCurrentDir + '\Data\'+Field+'.csv');
      Result := GetCurrentDir + '\Data\'+Field+'.csv';
    end
    else
      Result := EmptyStr;
   end
   else
     Result:=EmptyStr;
end;

procedure AddBlobFieldSample(FileNameDatabase, FileNameImage ,Table, Field,
  Sample_id, Digito, Tipo:String);
var FS:TFileStream;
  DatabaseSample: TSQLiteDatabase;
  TableSample:TSQLiteTable;
begin
  if FileExists(FileNameDatabase) then
  begin
    Try
      DatabaseSample := TSQLiteDatabase.Create(FileNameDatabase);
    finally
    end;
  end;

  Try
    FS := TFileStream.Create(FileNameImage, fmOpenRead);
  if Table = 'rruff' then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'" ;', FS);
    end
    else
    if Table = 'chemistry' then
    begin
     Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
      'rruff_id ="'+Sample_id+'"  AND digito='+
        '"'+Digito+'" ;', FS);
    end
    else
    if Table = 'raman' then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
       'rruff_id ="'+Sample_id+'"  AND digito='+
         '"'+Digito+'" AND direcao="'+Tipo+'" ;', FS);
    end
    else
    if Table = 'varredura' then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'"  AND digito='+
          '"'+Digito+'" AND comprimento_onda="'+Tipo+'" ;', FS);
    end
    else
    if Table = 'infravermelho' then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'"  AND digito='+
          '"'+Digito+'" ;', FS);
    end
    else
    if Table = 'difracao' then
    begin
      Dados.DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'"  AND digito='+
          '"'+Digito+'" ;', FS);
    end;
  finally
    FS.Free;
  end;
end;

procedure AddBlobFieldMineral(FilenameDatabase, FileNameImage,Table, Field,
  Especie_Tipo: String);
var FS: TFileStream;
  DatabaseMineral: TSQLiteDatabase;
  TableMineral: TSQLiteTable;
begin
  if FileExists(FileNameDatabase) then
  begin
    Try
      DatabaseMineral := TSQLiteDatabase.Create(FileNameDatabase);
    finally
    end;
  end;

  Try
    FS := TFileStream.Create(FileNameImage, fmOpenRead);
    if Table = 'minerais' then
    begin
      DatabaseMineral.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE nome = "'+
        Especie_Tipo+'"  ;', FS);
    end
    else
    if Table = 'mineralogia' then
    begin
      DatabaseMineral.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE campo'+
        ' =  "'+Especie_Tipo+'"  ;', FS);
    end
  finally
    FS.Free;
  end;
end;

procedure ClearBlobField(Table, Field, Especie, Rruff_id, Digito, Tipo: String);
begin
  if Table = 'minerais' then
  begin
    Dados.DatabaseMinerals.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
      'WHERE nome="'+Especie+'" ;');
  end
  else
  if Table = 'mineralogia' then
  begin
    Dados.DatabaseMinerals.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
      'WHERE campo="'+Tipo+'" ;');
  end
  else
  if Table = 'rruff' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" ;');
    end
    else
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+' AND "rruff_id="'+Rruff_id+'" ;');
    end;
  end
  else
  if Table= 'chemistry' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'";');
    end
    else
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
          'digito="'+Digito+'";');
    end;
  end
  else
  if Table = 'raman' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
          'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" AND '+
            'direcao="'+Tipo+'";');
    end
    else
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
          'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
            'digito="'+Digito+'" AND direcao="'+Tipo+'";');
    end;
  end
  else
  if Table = 'varredura' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" AND '+
          'comprimento_onda="'+Tipo+'";');
    end
    else
    begin
       Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
          'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
            'digito="'+Digito+'" AND comprimento_onda="'+Tipo+'";');
    end;
  end
  else
  if Table = 'infravermelho' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" ;');
    end
    else
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
          'digito="'+Digito+'" ;');
    end;
  end
  else
  if Table = 'difracao' then
  begin
    if Especie = EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" ;');
    end
    else
    begin
      Dados.DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
          'digito="'+Digito+'" ;');
    end;
  end;
end;

end.

