{
  GNU LESSER GENERAL PUBLIC LICENSE

Version 3, 29 June 2007

Copyright © 2007 Free Software Foundation, Inc. <http://fsf.org/>

Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.

This version of the GNU Lesser General Public License incorporates the terms and conditions of version 3 of the GNU General Public License, supplemented by the additional permissions listed below.

0. Additional Definitions.
As used herein, “this License” refers to version 3 of the GNU Lesser General Public License, and the “GNU GPL” refers to version 3 of the GNU General Public License.

“The Library” refers to a covered work governed by this License, other than an Application or a Combined Work as defined below.

An “Application” is any work that makes use of an interface provided by the Library, but which is not otherwise based on the Library. Defining a subclass of a class defined by the Library is deemed a mode of using an interface provided by the Library.

A “Combined Work” is a work produced by combining or linking an Application with the Library. The particular version of the Library with which the Combined Work was made is also called the “Linked Version”.

The “Minimal Corresponding Source” for a Combined Work means the Corresponding Source for the Combined Work, excluding any source code for portions of the Combined Work that, considered in isolation, are based on the Application, and not on the Linked Version.

The “Corresponding Application Code” for a Combined Work means the object code and/or source code for the Application, including any data and utility programs needed for reproducing the Combined Work from the Application, but excluding the System Libraries of the Combined Work.

1. Exception to Section 3 of the GNU GPL.
You may convey a covered work under sections 3 and 4 of this License without being bound by section 3 of the GNU GPL.

2. Conveying Modified Versions.
If you modify a copy of the Library, and, in your modifications, a facility refers to a function or data to be supplied by an Application that uses the facility (other than as an argument passed when the facility is invoked), then you may convey a copy of the modified version:

a) under this License, provided that you make a good faith effort to ensure that, in the event an Application does not supply the function or data, the facility still operates, and performs whatever part of its purpose remains meaningful, or
b) under the GNU GPL, with none of the additional permissions of this License applicable to that copy.
3. Object Code Incorporating Material from Library Header Files.
The object code form of an Application may incorporate material from a header file that is part of the Library. You may convey such object code under terms of your choice, provided that, if the incorporated material is not limited to numerical parameters, data structure layouts and accessors, or small macros, inline functions and templates (ten or fewer lines in length), you do both of the following:

a) Give prominent notice with each copy of the object code that the Library is used in it and that the Library and its use are covered by this License.
b) Accompany the object code with a copy of the GNU GPL and this license document.
4. Combined Works.
You may convey a Combined Work under terms of your choice that, taken together, effectively do not restrict modification of the portions of the Library contained in the Combined Work and reverse engineering for debugging such modifications, if you also do each of the following:

a) Give prominent notice with each copy of the Combined Work that the Library is used in it and that the Library and its use are covered by this License.
b) Accompany the Combined Work with a copy of the GNU GPL and this license document.
c) For a Combined Work that displays copyright notices during execution, include the copyright notice for the Library among these notices, as well as a reference directing the user to the copies of the GNU GPL and this license document.
d) Do one of the following:
0) Convey the Minimal Corresponding Source under the terms of this License, and the Corresponding Application Code in a form suitable for, and under terms that permit, the user to recombine or relink the Application with a modified version of the Linked Version to produce a modified Combined Work, in the manner specified by section 6 of the GNU GPL for conveying Corresponding Source.
1) Use a suitable shared library mechanism for linking with the Library. A suitable mechanism is one that (a) uses at run time a copy of the Library already present on the user's computer system, and (b) will operate properly with a modified version of the Library that is interface-compatible with the Linked Version.
e) Provide Installation Information, but only if you would otherwise be required to provide such information under section 6 of the GNU GPL, and only to the extent that such information is necessary to install and execute a modified version of the Combined Work produced by recombining or relinking the Application with a modified version of the Linked Version. (If you use option 4d0, the Installation Information must accompany the Minimal Corresponding Source and Corresponding Application Code. If you use option 4d1, you must provide the Installation Information in the manner specified by section 6 of the GNU GPL for conveying Corresponding Source.)
5. Combined Libraries.
You may place library facilities that are a work based on the Library side by side in a single library together with other library facilities that are not Applications and are not covered by this License, and convey such a combined library under terms of your choice, if you do both of the following:

a) Accompany the combined library with a copy of the same work based on the Library, uncombined with any other library facilities, conveyed under the terms of this License.
b) Give prominent notice with the combined library that part of it is a work based on the Library, and explaining where to find the accompanying uncombined form of the same work.
6. Revised Versions of the GNU Lesser General Public License.
The Free Software Foundation may publish revised and/or new versions of the GNU Lesser General Public License from time to time. Such new versions will be similar in spirit to the present version, but may differ in detail to address new problems or concerns.

Each version is given a distinguishing version number. If the Library as you received it specifies that a certain numbered version of the GNU Lesser General Public License “or any later version” applies to it, you have the option of following the terms and conditions either of that published version or of any later version published by the Free Software Foundation. If the Library as you received it does not specify a version number of the GNU Lesser General Public License, you may choose any version of the GNU Lesser General Public License ever published by the Free Software Foundation.

If the Library as you received it specifies that a proxy can decide whether future versions of the GNU Lesser General Public License shall apply, that proxy's public statement of acceptance of any version is permanent authorization for you to choose that version for the Library.
 }

unit udatamodule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sqlite3DS, DB, SdfData, FileUtil, LR_Class,
  LR_DBSet, SQLite3tablemod, Dialogs;

type

  { TDados }

  TDados = class(TDataModule)
    DatasourceInstrumentos: TDatasource;
    DatasourcePlanilhaMicrossonda: TDatasource;
    DatasourcePrinter: TDatasource;
    DatasourceReport: TDatasource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    SdfDataSetGraficosValorX: TField;
    SdfDataSetGraficosValorY: TField;
    SdfDataSetPlanilhaMicrossonda: TSdfDataSet;
    Sqlite3DatasetInstrumentos: TSqlite3Dataset;
    Sqlite3DatasetPrinter: TSqlite3Dataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    DatabaseMinerals: TSQLiteDatabase;  //
    TableMinerals: TSQLiteTable;        // retirar
    DatabaseSamples: TSQLiteDatabase;   //
    TableSamples: TSQLiteTable;         //
    Datasource: TDatasource;
    Dataset: TSDFDataset;

    //guarda o caminho do banco de dados:
    DatabaseMineralFileName, DatabaseSampleFileName: String;

    //guarda o caminho do arquivo config e dos arquivos .csv
    //getcurrentdir+'\Data' ou getcurrentdir+'\'
    Caminho: String;

    procedure UpdateField(Table, Field, NewValue, Especie, Sample, Digito,
      Direction: String);
    procedure CreateDatabase(Tipo, Diretorio: String);
    function ChooseDatabase(Tipo, Directory:String): Boolean;
    //procedure AdicionaEspecie(Nome, Classe, Subclasse, Grupo, Subgrupo,
      //Ocorrencia, Associacao, Cor, Brilho: string; Dureza_min, Dureza_max: real;
      //Densidade_min, Densidade_max: string);
    procedure AdicionaAmostra(Tabela, Especie, Sample_id, Digito,
      Direcao, Equipment:String );
    procedure ExcluiAmostra(Especie, Sample_id, Digito: String;
      TabIndex: Integer);
    procedure ExcluiMineral(Especie: string);
    function CriarDataset(Diretorio: string): TDatasource;
    { public declarations }
  end;

var
  Dados: TDados;
  MS: TMemoryStream;
  FS: TFileStream;
  num: integer;

implementation

{$R *.lfm}

{ TDados }

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  if SQLite3DatasetPrinter.Active then
    SQLite3DatasetPrinter.Close;
  if SDFDatasetPlanilhaMicrossonda.Active then
    SDFDatasetPlanilhaMicrossonda.Close;
  if SQLite3DatasetInstrumentos.Active then
    SQLite3DatasetInstrumentos.Close;
  DatabaseMinerals.Free;
  DatabaseSamples.Free;
end;

procedure TDados.UpdateField(Table, Field, NewValue, Especie, Sample, Digito,
  Direction: String);
begin
  if Table = 'minerais' then
  begin
    TableMinerals:= DatabaseMinerals.GetTable('UPDATE '+Table+' SET '+
      Field+ ' = "'+NewValue+'" WHERE nome = "'+Especie+'" ; ' );
  end
  else
  if Table = 'rruff' then
  begin
    TableSamples := DatabaseSamples.GetTable('UPDATE '+Table+' SET '+
      Field+' = "'+NewValue+'" WHERE rruff_id = "'+Sample+'" ;');
  end
  else
  if Table = 'chemistry' then
  begin
    TableSamples:= DatabaseSamples.GetTable('UPDATE '+Table+' SET '+
      Field+'= "'+NewValue+'" WHERE rruff_id = "'+Sample+'" ;');
  end
  else
  if Table = 'raman' then
  begin
    TableSamples:= DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" AND direcao="'+Direction+'" ;');
  end
  else
  if Table = 'varredura' then
  begin
    TableSamples:= DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" AND comprimento_onda="'+Direction+'" ;');
  end
  else
  if Table = 'infravermelho' then
  begin
    TableSamples:= DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" ;');
  end
  else
  if Table = 'difracao' then
  begin
    TableSamples:= DatabaseSamples.GetTable('UPDATE '+Table+ ' SET '+
      Field+'="'+NewValue+'" WHERE rruff_if="'+Sample+'" AND digito="'+
        Digito+'" ;');
  end;
end;

procedure TDados.CreateDatabase(Tipo, Diretorio: String);
var
  ExecSQL: string;
begin
  if Tipo = 'mineral' then
  begin
  try
    DatabaseMinerals := TSQLiteDatabase.Create(Diretorio);
    ExecSQL :=
      'CREATE TABLE minerais ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT '+
        'UNIQUE  NOT NULL, [formula] TEXT, [classe] TEXT, [subclasse] TEXT, '+
          '[grupo] TEXT, [subgrupo] TEXT, [ocorrencia] TEXT, [associacao] TEXT,'+
            '[distincao] TEXT,';
    ExecSQL := ExecSQL +
      ' [aplicacao] TEXT, [alteracao] TEXT, [dureza_min] FLOAT, [dureza_max] '+
        'FLOAT, [densidade_min] FLOAT, [densidade_max] FLOAT, [cor] TEXT,'+
          '[brilho] TEXT, [traco] TEXT, [fratura] TEXT, [clivagem] TEXT, ';
    ExecSQL := ExecSQL +
      ' [luminescencia] TEXT, [magnetismo] TEXT, [difaneidade] TEXT, '+
        '[sinal_optico] TEXT, [indice_refracao] TEXT, [angulo] TEXT, '+
          '[cor_interferencia] TEXT, [cor_lamina] TEXT, [sinal_elongacao] TEXT,'+
            '[birrefringencia] TEXT, [relevo] TEXT, ';
    ExecSQL := ExecSQL +
      ' [extincao] TEXT, [classe_cristalina] TEXT, [sistema] TEXT, [h_m] TEXT,'+
        '[habito] TEXT, [imagem1] BLOB, [imagem2] BLOB, [imagem3] BLOB, '+
          '[imagem4] BLOB, [imagem5] BLOB, [imagem6] BLOB, [imagem7] BLOB);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE mineralogia ([id] INTEGER PRIMARY KEY NOT NULL, [campo] '+
        'TEXT, [texto] TEXT, [mineralogiaimagem1] BLOB, [mineralogiaimagem2] BLOB, '+
          '[mineralogiaimagem3] BLOB, [mineralogiaimagem4] BLOB, '+
            '[mineralogiaimagem5] BLOB);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    finally
    end;
  end
  else
  if Tipo = 'amostra' then
  begin
    try
      DatabaseSamples := TSQLiteDatabase.Create(Diretorio);
      ExecSQL :=
      'CREATE TABLE rruff ([id] INTEGER PRIMARY KEY NOT NULL, [especie] TEXT,'+
        ' [rruff_id] TEXT NOT NULL, [quimica_ideal] TEXT, [localidade] TEXT, '+
          '[fonte] TEXT, [proprietario] TEXT, [situacao] TEXT, [description] '+
            ' TEXT, [imagem_amostra] BLOB) ;';
      DatabaseSamples.ExecSQL(ExecSQL);
      ExecSQL := 'CREATE TABLE chemistry ([id] INTEGER PRIMARY KEY NOT NULL, '+
      '[especie] TEXT, [rruff_id] TEXT NOT NULL, [digito] INTEGER NOT NULL,'+
        '[quimica_medida] TEXT, [description] TEXT, [image] BLOB, '+
          '[microprobe_file] BLOB, [microprobe_equipment] TEXT );';
      DatabaseSamples.ExecSQL(ExecSQL);
      ExecSQL:= 'CREATE TABLE raman ([id] INTEGER PRIMARY KEY NOT NULL, [especie]'+
      ' TEXT, [rruff_id] TEXT NOT NULL, [digito] INTEGER NOT NULL, '+
        '[direcao] TEXT NOT NULL, [pin_id] TEXT, [orientacao] TEXT,  '+
          '[equipment] TEXT, [description] TEXT, [arquivo_raman] BLOB );';
      DatabaseSamples.ExecSQL(ExecSQL);
      ExecSQL:= 'CREATE TABLE varredura ([id] INTEGER PRIMARY KEY NOT NULL, '+
      '[especie] TEXT, [rruff_id] TEXT NOT NULL, [digito] INTEGER NOT NULL, '+
        '[comprimento_onda] TEXT NOT NULL, [arquivo_varredura] BLOB, '+
          '[description] TEXT, [equipment] TEXT ); ';
      DatabaseSamples.ExecSQL(ExecSQL);
      ExecSQL := 'CREATE TABLE infravermelho ([id] INTEGER PRIMARY KEY NOT NULL,'+
      '[especie] TEXT, [rruff_id] TEXT NOT NULL, [digito] INTEGER NOT NULL,'+
        '[resolucao] TEXT, [arquivo_infravermelho] BLOB, [description] TEXT, '+
          '[equipment] TEXT); ';
      DatabaseSamples.ExecSQL(ExecSQL);
      ExecSQL:= 'CREATE TABLE difracao ([id] INTEGER PRIMARY KEY NOT NULL, '+
      '[especie] TEXT, [rruff_id] TEXT NOT NULL, [digito] INTEGER NOT NULL, '+
        '[arquivo_difracao] BLOB, [a] TEXT, [b] TEXT, [c] TEXT, [alpha] TEXT, '+
          '[beta] TEXT, [gamma] TEXT, [volume] TEXT, [sistema_cristalino] TEXT);';
      DatabaseSamples.ExecSQL(ExecSQL);
      ExecSQL :=
      'CREATE TABLE instrumentos ([id] INTEGER PRIMARY KEY NOT NULL, [nome] '+
        'UNIQUE NOT NULL, [descricao] TEXT, [localidade] TEXT);';
      DatabaseSamples.ExecSQL(ExecSQL);
  finally

  end;
  end;
end;

procedure TDados.DataModuleCreate(Sender: TObject);
begin
  if DirectoryExists(GetCurrentDir+'\Data') then
    Caminho:=GetCurrentDir+'\Data'
  else
    begin
      try
        MkDir(GetCurrentDir+'\Data');
        Caminho:=GetCurrentDir+'\Data';
      except
        Caminho:=GetCurrentDir+'\';
      end;
    end;
end;
      //Verifica se o Banco de dados é compatível
function TDados.ChooseDatabase(Tipo, Directory: String): Boolean;
var Compatible:Boolean;
begin
  if Tipo = 'mineral' then
  begin
    DatabaseMinerals := TSQLiteDatabase.Create(Directory);
    if DatabaseMinerals.TableExists('minerais') then
    begin
      if DatabaseMinerals.TableExists('mineralogia') then
        Compatible:=True
      else
      Compatible := False;
    end
    else
      Compatible := False;
    if Compatible then
    begin
      with SQLite3DatasetPrinter do
      begin
        Filename := Directory;
      end;
    end;
     Result:= Compatible;
  end
  else
  if Tipo= 'amostra' then
  begin
   DatabaseSamples := TSQLiteDatabase.Create(Directory);
    if DatabaseSamples.TableExists('rruff') then
    begin
      if DatabaseSamples.TableExists('raman') then
      begin
        if DatabaseSamples.TableExists('varredura') then
        begin
          if DatabaseSamples.TableExists('infravermelho') then
          begin
            if DatabaseSamples.TableExists('difracao') then
            begin
              if DatabaseSamples.TableExists('instrumentos') then
              begin
                if DatabaseSamples.TableExists('chemistry') then
                  Compatible:= True
                  else
                  Compatible:=False;
              end
              else Compatible:=False;
            end
            else
              Compatible:=False;
          end
          else
            Compatible:=False;
        end
        else
          Compatible:=False;
      end
      else
        Compatible:=False;
    end
    else
      Compatible:=False;
    if Compatible then
    begin
      with SQLite3DatasetInstrumentos do
      begin
        Filename := Directory;
      end;
    end;
    Result:=Compatible;
  end
  else Result:= False;
end;
        //obsoleto
        {
procedure TDados.AdicionaEspecie(Nome, Classe, Subclasse, Grupo,
  Subgrupo, Ocorrencia, Associacao, Cor, Brilho: string; Dureza_min,
    Dureza_max: real; Densidade_min, Densidade_max: string);
begin
  DatabaseMinerals.ExecSQL('INSERT INTO minerais (nome, dureza_min, dureza_max, ' +
    'densidade_min,' + 'densidade_max) VALUES ("' + Nome + '", "' + FloatToStr(
      Dureza_min) + '","' + FloatToStr(Dureza_max) + '", "' + Densidade_min +
        '", "' + Densidade_max + '");');
  DatabaseMinerals.ExecSQL('UPDATE minerais SET classe="' + Classe + '", subclasse="' + Subclasse +
    '", grupo="' + Grupo + '", subgrupo="' + Subgrupo + '", ocorrencia="' + Ocorrencia +
    '", associacao="' + Associacao + '", cor="' + Cor + '", brilho="' + Brilho + '" WHERE' +
    ' nome="' + Nome + '" ;');
end;          }

procedure TDados.AdicionaAmostra(Tabela, Especie, Sample_id,
  Digito, Direcao, Equipment:String );
var
  ExecSQL: string;
begin
    if Sample_id = EmptyStr then
    Sample_id := 'A00000';
    //
    if Tabela = 'rruff' then
    begin
      ExecSQL:= 'INSERT INTO rruff (especie, rruff_id) VALUES ("'+Especie+'", '+
        '"'+Sample_id+'") ;';
      DatabaseSamples.ExecSQL(ExecSQL);
    end;
    //chemistry
    if Tabela = 'chemistry' then
    begin
      ExecSQL:= 'INSERT INTO chemistry (especie, rruff_id, digito) VALUES '+
        ' ("'+Especie+'", "'+Sample_id+'", "0") ;';
      DatabaseSamples.ExecSQL(ExecSQL);
    end;
    //raman
    //514
    if Tabela = 'raman' then
    begin
      ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito,  direcao, equipment) '
        + ' VALUES ("' + Especie + '" , "' +Sample_id + '", "'+Digito+'", "' +
          Direcao + '","");';
      DatabaseSamples.ExecSQL(ExecSQL);
    end;
  if Tabela = 'varredura' then
  begin
  //varredura
  ExecSql := 'INSERT INTO varredura (especie, rruff_id, digito, '+
  ' comprimento_onda, equipment)'
    + '  VALUES ("' + Especie + '" , "' + Sample_id + '", "'+Digito+'", "' +
    Direcao + '","");';
  DatabaseSamples.ExecSQL(ExecSQL);
  end;

  //infravermelho
  if Tabela = 'infravermelho' then
  begin

  ExecSQL := 'INSERT INTO infravermelho (especie, rruff_id, digito'+
   ', equipment) VALUES ("' + Especie + '" , "' + Sample_id + '" , "'+Digito+'","");';
  DatabaseSamples.ExecSQL(ExecSQL);
  end;
  if Tabela = 'difracao' then
  begin
  //Difracao
  ExecSQL := 'INSERT INTO difracao (especie, rruff_id, digito)' +
    ' VALUES ("' + Especie + '" , "' + Sample_id + '" , "'+Digito+'");';
  DatabaseSamples.ExecSQL(ExecSQL);
  end;
end;

procedure TDados.ExcluiAmostra(Especie, Sample_id, Digito: String;
  TabIndex: Integer);
begin
  if Digito = EmptyStr then
  begin
    if Especie = EmptyStr then
    begin
      DatabaseSamples.ExecSQL('DELETE FROM rruff WHERE (rruff_id ="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE (rruff_id ="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM raman WHERE (rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE (rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE (rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE (rruff_id="' + Sample_id+'");');
    end
    else
    begin
      DatabaseSamples.ExecSQL('DELETE FROM rruff WHERE (especie="' + Especie +
        '" and rruff_id ="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE (especie="' + Especie +
        '" and rruff_id ="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM raman WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
    end;
  end
  else
  begin
    if Especie = EmptyStr then
    begin
      case TabIndex of
      1:begin
          DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE (rruff_id ="' +
            Sample_id + '" AND digito="'+Digito+'" );');
        end;
      2:begin
          DatabaseSamples.ExecSQL('DELETE FROM raman WHERE (rruff_id="' +
            Sample_id + '" AND digito="'+Digito+'" );');
        end;
      3:begin
          DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE (rruff_id="' +
            Sample_id + '" AND digito="'+Digito+'" );');
        end;
      4:begin

          DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE (rruff_id="' +
            Sample_id + '"AND digito="'+Digito+'" );');
        end;
      5:begin
          DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE (rruff_id="' +
            Sample_id+'" AND digito="'+Digito+'" );');
        end;
      end;
    end
    else
    begin
      DatabaseSamples.ExecSQL('DELETE FROM rruff WHERE (especie="' + Especie +
        '" and rruff_id ="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE (especie="' + Especie +
        '" and rruff_id ="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM raman WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
      DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE (especie="' + Especie +
        '" and rruff_id="' + Sample_id + '");');
    end;
  end;
end;

procedure TDados.ExcluiMineral(Especie: string);
begin
  DatabaseMinerals.ExecSQL('DELETE FROM minerais WHERE (nome="' + Especie + '");');
end;

function TDados.CriarDataset(Diretorio: string): TDatasource;
begin
  Inc(num);
  Dataset := TSDFDataset.Create(nil);
  with Dataset do
  begin
    Name := 'Datasource' + IntToStr(num);
    Filename := Diretorio;
    Dataset.Delimiter := ',';
  end;
  Datasource := TDatasource.Create(nil);
  Datasource.DataSet := Dataset;
  with Datasource do
  begin
    Name := 'Dataset' + IntToStr(num);
    Enabled := True;
  end;
  Dataset.Open;
  Result := Datasource;
end;

end.
