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

implementation

uses uDataModule, unitGraficos;

procedure CSVFileToBlobField(Path, Table, Field, Especie, Rruff_id, Digito,
  Tipo: String);
var DatabaseSamples:TSQLiteDatabase;
begin
  DatabaseSamples:=TSQLiteDatabase.Create(Dados.DatabaseSampleFileName);
  Try
  FS := TFileStream.Create(Path, fmOpenRead);
  if Table = 'chemistry' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '";', FS);
    end
    else
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '";', FS);
    end;
  end
  else
  if Table = 'raman' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'direcao="'+Tipo+'" ;', FS);
    end
    else
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'direcao="'+Tipo+'" ;', FS);
    end;
  end
  else
  if Table = 'varredura' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'comprimento_onda="'+Tipo+'" ;', FS);
    end
    else
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" AND '+
          'comprimento_onda="'+Tipo+'" ;', FS);
    end;
  end
  else
  if Table = 'infravermelho' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;', FS);
    end
    else
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;',
          FS);
    end;
  end
  else
  if Table = 'difracao' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;', FS);
    end
    else
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE especie="'+
        Especie+'" AND rruff_id="' + Rruff_id + '" AND digito="'+Digito+'" ;',
          FS);
    end;
  end;
  finally
    FS.Free;
  end;
  DatabaseSamples.Free;
end;

function SelectBlobFieldToJPEGImage(Table, Field, Especie, Rruff_id, Digito,
  Tipo: String): TJPEGImage;
var I:Boolean; pic: TJPEGImage;
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
    if Trim(Especie) = EmptyStr then
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
    if Trim(Especie) = EmptyStr then
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
  end
  else
    Result:=nil;

  if I then
  begin
   if Dados.TableMinerals.Count > 0 then
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
      if Dados.TableSamples.Count > 0 then
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
//dividir esta função em duas(minerais, amostras) e colocar as variaveis
// TSQLitedatabase e tsqlitetable como locais
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
var DatabaseSamples:TSQLiteDatabase; TableSAmples:TSQLiteTable;
begin
  DataBaseSamples:=TSQLiteDatabase.Create(Dados.DatabaseSampleFileName);
  if Table = 'chemistry' then
  begin
    TableSamples := DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE digito ="' + Digito + '" and rruff_id ="' + Rruff_id + '" ;');
  end
  else
  if Table = 'raman' then
  begin
    TableSamples := DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE  rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'" AND direcao="'+Tipo+'" ;');
  end
  else
  if Table= 'varredura' then
  begin
    TableSamples := DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'" AND comprimento_onda="'+Tipo+'" ;');
  end
  else
  if Table = 'infravermelho' then
  begin
    TableSamples := DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'";');
  end
  else
  if Table = 'difracao' then
  begin
    TableSamples := DatabaseSamples.GetTable('SELECT especie, rruff_id, '+Field+' FROM '+Table+
      ' WHERE rruff_id ="' + Rruff_id + '" '+
        'AND digito="'+Digito+'";');
  end;
  if TableSamples.RowCount > 0 then
  begin
    MS := TableSamples.FieldAsBlob(TableSamples.FieldIndex[Field]);
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
   DatabaseSamples.Free;
end;
           //a variavel FilenameDatabase pode ser retirada e ser usado
           //a variavel DatabaseSamplesFileName do udatamodule.pas
procedure AddBlobFieldSample(FileNameDatabase, FileNameImage ,Table, Field,
  Sample_id, Digito, Tipo:String);
var FS:TFileStream;  DatabaseSamples:TSQLiteDatabase;
begin
  DatabaseSamples:=TSQliteDatabase.Create(FileNameDatabase);
  Try
    FS := TFileStream.Create(FileNameImage, fmOpenRead);
  if Table = 'rruff' then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'" ;', FS);
    end
    else
    if Table = 'chemistry' then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
      'rruff_id ="'+Sample_id+'"  AND digito='+
        '"'+Digito+'" ;', FS);
    end
    else
    if Table = 'raman' then
    begin
     DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
       'rruff_id ="'+Sample_id+'"  AND digito='+
         '"'+Digito+'" AND direcao="'+Tipo+'" ;', FS);
    end
    else
    if Table = 'varredura' then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'"  AND digito='+
          '"'+Digito+'" AND comprimento_onda="'+Tipo+'" ;', FS);
    end
    else
    if Table = 'infravermelho' then
    begin
      DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'"  AND digito='+
          '"'+Digito+'" ;', FS);
    end
    else
    if Table = 'difracao' then
    begin
     DatabaseSamples.UpdateBlob('UPDATE '+Table+' set '+Field+' = ? WHERE '+
        'rruff_id ="'+Sample_id+'"  AND digito='+
          '"'+Digito+'" ;', FS);
    end;
  finally
    FS.Free;
  end;
  DatabaseSamples.Free;
end;

procedure AddBlobFieldMineral(FilenameDatabase, FileNameImage,Table, Field,
  Especie_Tipo: String);
var FS: TFileStream;
  DatabaseMineral: TSQLiteDatabase;
begin
  DatabaseMineral:= TSQLiteDatabase.Create(Dados.DatabaseMineralFileName);
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
  DatabaseMineral.Free;
end;

procedure ClearBlobField(Table, Field, Especie, Rruff_id, Digito, Tipo: String);
var DatabaseMinerals, DatabaseSamples: TSQLiteDatabase;
begin
  DatabaseMinerals:=TSQLiteDatabase.Create(Dados.DatabaseMineralFileName);
  DatabaseSamples:=TSQLiteDatabase.Create(Dados.DatabaseSampleFileName);
  Try
  if Table = 'minerais' then
  begin
    DatabaseMinerals.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
      'WHERE nome="'+Especie+'" ;');
  end
  else
  if Table = 'mineralogia' then
  begin
    DatabaseMinerals.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
      'WHERE campo="'+Tipo+'" ;');
  end
  else
  if Table = 'rruff' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" ;');
    end
    else
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+' AND "rruff_id="'+Rruff_id+'" ;');
    end;
  end
  else
  if Table= 'chemistry' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'";');
    end
    else
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
          'digito="'+Digito+'";');
    end;
  end
  else
  if Table = 'raman' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
          'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" AND '+
            'direcao="'+Tipo+'";');
    end
    else
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
          'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
            'digito="'+Digito+'" AND direcao="'+Tipo+'";');
    end;
  end
  else
  if Table = 'varredura' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" AND '+
          'comprimento_onda="'+Tipo+'";');
    end
    else
    begin
       DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
          'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
            'digito="'+Digito+'" AND comprimento_onda="'+Tipo+'";');
    end;
  end
  else
  if Table = 'infravermelho' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" ;');
    end
    else
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
          'digito="'+Digito+'" ;');
    end;
  end
  else
  if Table = 'difracao' then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE rruff_id="'+Rruff_id+'" AND digito="'+Digito+'" ;');
    end
    else
    begin
      DatabaseSamples.ExecSQL('Update ' + Table + ' set ' + Field +' = null '+
        'WHERE especie="'+Especie+'" AND rruff_id="'+Rruff_id+'" AND '+
          'digito="'+Digito+'" ;');
    end;
  end;
  finally
  end;
  DatabaseMinerals.Free;
  DatabaseSamples.Free;
end;

end.

