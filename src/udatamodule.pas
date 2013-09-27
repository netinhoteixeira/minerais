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
  Classes, SysUtils, Sqlite3DS, DB, SdfData, FileUtil, LR_Class, LR_DBSet,
  SQLite3mod, SQLite3tablemod, Dialogs;

type

  { TDados }

  TDados = class(TDataModule)
    DatasourceInstrumentos: TDatasource;
    DatasourceGraficos: TDatasource;
    DatasourcePreencheAmostras: TDatasource;
    DatasourcePlanilhaMicrossonda: TDatasource;
    DatasourceAmostras: TDatasource;
    DatasourcePrinter: TDatasource;
    DatasourceReport: TDatasource;
    DatasourceCombobox: TDatasource;
    DatasourceGeral: TDatasource;
    DatasourceDidatico: TDatasource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    SdfDataSetGraficos: TSdfDataSet;
    SdfDataSetPlanilhaMicrossonda: TSdfDataSet;
    Sqlite3DatasetInstrumentos: TSqlite3Dataset;
    Sqlite3DatasetPreencheAmostras: TSqlite3Dataset;
    Sqlite3DatasetAmostras: TSqlite3Dataset;
    Sqlite3DatasetPrinter: TSqlite3Dataset;
    Sqlite3DatasetCombobox: TSqlite3Dataset;
    Sqlite3DatasetDidatico: TSqlite3Dataset;
    Sqlite3DatasetGeral: TSqlite3Dataset;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    sldb: TSQLiteDatabase;
    sltb: TSQLiteTable;
    sldbRAMAN: TSQLiteDatabase;
    sltbRAMAN: TSQLiteTable;
    function DeterminaBD(diretorio: string): boolean;
    function DeterminaArquivo(Especie: string; Rruff_id: string;
     Tipo: string; Equipamento:String;DirecaoLaser: string): string;
    procedure SalvaArquivo(Especie: string; Rruff_id: string;
     Tipo: string; Equipamento: String; DirecaoLaser: string; DiretorioArquivo: string);
    procedure AdicionaAmostra(Especie: string; Rruff_id: string);
    procedure ExcluiAmostra(Especie: string; Rruff_id: string);
    procedure ExcluiMineral(Especie: string);
    procedure AdicionaInstrumento(Nome:String; Localidade:String; Descricao:String);
    function ListaMinerais:TStrings;
    function ListaRruff_ids(Especie:String; Rruff_id:String): TStrings;
    function Equipamentos:TStrings;
    procedure AtualizaEquipamento(Novo:Boolean; Nome:String; Descricao:String; Localidade:String);
    { public declarations }
  end;

var
  Dados: TDados;
  MS: TMemoryStream;
  FS: TFileStream;

const
  Microssonda: string = 'Microssonda';
  EspectroRAMAN: string = 'RAMAN';
  AmplaVarredura: string = 'Ampla Varredura';
  Infravermelho: string = 'Espectro Infravermelho';
  Difracao: string = 'Difracao';
  TodosOsDados: string = 'Todos os Dados';
  Depolarizado: string = 'Não polarizado';
  Angulo0: string = '0.000';
  Angulo45: string = '45.000 ccw';
  Angulo90: string = '90.000 ccw';
  Onda532:String = '532 nm';
  Onda780:String = '780 nm';

implementation

{$R *.lfm}

{ TDados }

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  if SQLite3DatasetGeral.Active then
    SQLite3DatasetGeral.Close;
  if SQLite3DatasetDidatico.Active then
    SQLite3DatasetDidatico.Close;
  if SQLite3DatasetCombobox.Active then
    SQLite3DatasetCombobox.Close;
  if SQLite3DatasetPrinter.Active then
    SQLite3DatasetPrinter.Close;
  if SQLite3DatasetPreencheAmostras.Active then
    SQLite3DatasetPreencheAmostras.Close;
  if SQlite3DatasetAmostras.Active then
    SQLite3DatasetAmostras.Close;
  if SDFDatasetPlanilhaMicrossonda.Active then
    SDFDatasetPlanilhaMicrossonda.Close;
  if SdfDatasetGraficos.Active then
    SdfDatasetGraficos.Close;
  if SQLite3DatasetInstrumentos.Active then
    SQLite3DatasetInstrumentos.Close;
  sldb.Free;
  sldbRaman.Free;
end;

function TDados.determinaBD(diretorio: string): boolean;
begin
  if SQLite3DatasetGeral.Active then
    SQLite3DatasetGeral.Close;
  if SQLite3DatasetCombobox.Active then
    SQLite3DatasetComboBox.Close;
  if SQLite3DatasetDidatico.Active then
    SQLite3DatasetDidatico.Close;
  with SQLite3DatasetGeral do
  begin
    FileName := diretorio;
  end;
  with SQLite3DatasetCombobox do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetDidatico do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetPrinter do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetAmostras do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetPreencheAmostras do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetInstrumentos do
  begin
    Filename := diretorio;
  end;
  sldb := TSQLiteDatabase.Create(Diretorio);
  sldbRaman := TSQLiteDatabase.Create(Diretorio);
  //Checa se a Tabela é compatível
  if sldb.TableExists('minerais') then
  begin
    if sldb.TableExists('mineralogia') then
    begin
      if sldb.TableExists('rruff') then
      begin
        if sldb.TableExists('raman') then
        begin
          if sldb.TableExists('instrumentos') then
          Result := True
          else
          Result:=False;
        end
        else
          Result := False;
      end
      else
        Result := False;
    end
    else
      Result := False;
  end
  else
    Result := False;
end;

function TDados.DeterminaArquivo(Especie: string; Rruff_id: string;
  Tipo: string; Equipamento:String; DirecaoLaser: string): string;
begin
  if Tipo = Microssonda then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, microssonda FROM rruff WHERE ' +
      'especie ="' + Especie + '" and rruff_id ="' + Rruff_id + '" ;');
    MS := sltb.FieldAsBlob(sltb.FieldIndex['microssonda']);
    if MS <> nil then
    begin
      MS.Position := 0;
      MS.SaveToFile(GetCurrentDir + '\Data\microssonda.csv');
      Result := GetCurrentDir + '\Data\microssonda.csv';
    end;
  end
  else
  if Tipo = EspectroRaman then
  begin
    {{if DirecaoLaser = TodosOsDados then
    begin      //Apagar TodosOsDados, Chamr pelo FormPrincipal todos os cmprimentos de onda
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '");');
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '");');
    end
    else }
    if DirecaoLaser = Onda532 then
    begin
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="1");');
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="1");');
    end
    else
    if DirecaoLaser = Onda780 then
    begin
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="2");') ;
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="2");');
    end
    else
    if DirecaoLaser = Angulo0 then
    begin
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="3");');
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="3");');
    end
    else
    if DirecaoLaser = Angulo45 then
    begin
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="4");') ;
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="4");')
    end
    else
    if DirecaoLaser = Angulo90 then
    begin
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="5");');
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
        + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="5");')
    end
    else
    if DirecaoLaser = Depolarizado then
    begin
      Dados.Sqlite3DatasetAmostras.ExecSQL('SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (' + 'especie ="'
          + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="6");');
      sltbRaman := sldbRAMAN.GetTable(
        'SELECT especie, rruff_id, arquivo_raman, direcao FROM raman WHERE (especie ="'
          + Especie + '" and rruff_id ="' + Rruff_id + '" and direcao ="6");');
    end;
    if Dados.Sqlite3DatasetAmostras.RecNo > 0 then
    begin
      MS := sltbRAMAN.FieldAsBlob(sltbRaman.FieldIndex['arquivo_raman']);
      if MS <> nil then
      begin
        MS.Position := 0;
        MS.SaveToFile(GetCurrentDir + '\Data\raman.csv');
        Result := GetCurrentDir + '\Data\raman.csv';
      end
      else Result:=EmptyStr;
    end
    else }Result:=EmptyStr;
  end
  else
  if Tipo = AmplaVarredura then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, varredura FROM rruff WHERE ' +
      'especie ="' + Especie + '" and rruff_id ="' + Rruff_id + '";');
    MS := sltb.FieldAsBlob(sltb.FieldIndex['varredura']);
    if MS <> nil then
    begin
      MS.Position := 0;
      MS.SaveToFile(GetCurrentDir + '\Data\varredura.csv');
      Result := GetCurrentDir + '\Data\varredura.csv';
    end;
  end
  else
  if Tipo = Infravermelho then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, infravermelho FROM rruff WHERE ' +
      'especie ="' + Especie + '" and rruff_id ="' + Rruff_id + '";');
    MS := sltb.FieldAsBlob(sltb.FieldIndex['infravermelho']);
    if MS <> nil then
    begin
      MS.Position := 0;
      MS.SaveToFile(GetCurrentDir + '\Data\infravermelho.csv');
      Result := GetCurrentDir + '\Data\infravermelho.csv';
    end;
  end
  else
  if Tipo = Difracao then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, difracao FROM rruff WHERE ' +
      'especie ="' + Especie + '" and rruff_id ="' + Rruff_id + '";');
    MS := sltb.FieldAsBlob(sltb.FieldIndex['difracao']);
    if MS <> nil then
    begin
      MS.Position := 0;
      MS.SaveToFile(GetCurrentDir + '\Data\difracao.csv');
      Result := GetCurrentDir + '\Data\difracao.csv';
    end;
  end
  else
    Result := EmptyStr;
end;

procedure TDados.SalvaArquivo(Especie: string; Rruff_id: string;
  Tipo: string; Equipamento: String; DirecaoLaser: string; DiretorioArquivo: string);
begin

  if Tipo = Microssonda then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, microssonda FROM rruff ;');
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set microssonda = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '";', fs);
    FS.Free;
  end;
  if Tipo = EspectroRaman then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, arquivo_raman, direcao, equipamento_raman FROM raman ;');
    FS:=TFileStream.Create(DiretorioArquivo, fmOpenRead);

    if DirecaoLaser  = Onda532 then
    begin  //adicionar variavel digito ao UpdateBlob
      if UpCase(Trim(Equipamento)) = UpCase(Trim('Adicionar Equipamento')) then
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "1" and equipamento_raman=Null ;', fs)
      else
         sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "1" and equipamento_raman="'+Equipamento+'" ;', fs);
    end
    else
    if DirecaoLaser  = Onda780 then
    begin
      if UpCase(Trim(Equipamento)) = UpCase(Trim('Adicionar Equipamento')) then
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "2" and equipamento_raman=Null ;', fs)
      else
         sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "2" and equipamento_raman="'+Equipamento+'" ;', fs);
    end
    else
    if DirecaoLaser  = Angulo0 then
    begin
      if UpCase(Trim(Equipamento)) = UpCase(Trim('Adicionar Equipamento')) then
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE ( especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "3" and equipamento_raman=Null );', fs)
      else
         sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE (especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "3" and equipamento_raman="'+Equipamento+'" );', fs);
    end
    else
    if DirecaoLaser = Angulo45 then
    begin
      if UpCase(Trim(Equipamento)) = UpCase(Trim('Adicionar Equipamento')) then
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "4" and equipamento_raman=Null ;', fs)
      else
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "4" and equipamento_raman="'+Equipamento+'";', fs);
    end
    else
    if DirecaoLaser = Angulo90 then
    begin
      if UpCase(Trim(Equipamento)) = UpCase(Trim('Adicionar Equipamento')) then
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "5" and equipamento_raman=Null;', fs)
      else
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "5" and equipamento_raman="'+Equipamento+'";', fs);
    end
    else
    if DirecaoLaser = Depolarizado then
    begin
      if UpCase(Trim(Equipamento)) = UpCase(Trim('Adicionar Equipamento')) then
        sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "6" and equipamento_raman=Null;', fs)
      else
         sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'"'+
          ' and direcao = "6" and equipamento_raman="'+Equipamento+'";', fs);
    end;
    FS.Free;
  end;
  if Tipo = AmplaVarredura then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, varredura FROM rruff ;');
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set varredura = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '";', fs);
    FS.Free;
  end;
  if Tipo = Infravermelho then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, infravermelho FROM rruff ;');
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set infravermelho = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '";', fs);
    FS.Free;
  end;
  if Tipo = Difracao then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, difracao FROM rruff ;');
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set difracao = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '";', fs);
    FS.Free;
  end;
end;

procedure TDados.AdicionaAmostra(Especie: string; Rruff_id: string);
var
  ExecSQL: string;
begin
  if Rruff_id = EmptyStr then
    Rruff_id := 'A00000';
  ExecSQL := 'INSERT INTO rruff (especie, rruff_id) VALUES("' + Especie;
  ExecSQL := ExecSQL + '" , "' + Rruff_id + '");';
  sldb.ExecSQL(ExecSQL);                //onda580
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_id,  direcao) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", "0", "1");';
  sldb.ExecSQL(ExecSQl);
                                        //onda732
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_id, direcao) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", "0", "2");';
  sldb.ExecSQL(ExecSQL);
                                      //angulo0
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_id, direcao) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", "0", "3");';
  sldb.ExecSQL(ExecSQL);
                                      //angulo45
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_id, direcao) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", "0", "4");';
  sldb.ExecSQL(ExecSQL);
                                     //angulo90
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_id, direcao) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", "0", "5");';
  sldb.ExecSQL(ExecSQL);
                                     //nao polarizado
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_id, direcao) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", "0", "6");';
  sldb.ExecSQL(ExecSQL);
end;

procedure TDados.ExcluiAmostra(Especie: string; Rruff_id: string);
begin
  sldb.ExecSQL('DELETE FROM rruff WHERE (especie="' + Especie +
    '" and rruff_id ="' + Rruff_id + '");');
  sldb.ExecSQL('DELETE FROM raman WHERE (especie="' + Especie +
    '" and rruff_id="' + Rruff_id + '");');
end;

procedure TDados.ExcluiMineral(Especie: string);
begin
  sldb.ExecSQL('DELETE FROM minerais WHERE (nome="' + Especie + '");');
end;

procedure TDados.AdicionaInstrumento(Nome: String; Localidade: String;
  Descricao: String);
var ExecSQL:String;
begin
  ExecSQL := 'INSERT INTO instrumentos (nome, localidade, descricao) VALUES ("'+
    Nome+'", "'+Localidade+'", "'+Descricao+'");';
  sldb.ExecSQL(ExecSQL);
end;

function TDados.ListaMinerais: TStrings;
var Lista:TStrings;
begin
 // Lista.Clear;
  sltb := sldb.GetTable('SELECT nome FROM minerais ;'); //ORDER BY ASC
  if sltb.MoveFirst then
  begin
    while not sltb.EOF do
    begin
      Lista.Append(sltb.FieldByName['especie']);
      sltb.Next;
    end;
  end;
  Result:=Lista;
end;

function TDados.ListaRruff_ids(Especie:String; Rruff_id:String): TStrings;
var Lista:TStrings;
begin
  Lista:=TStrings.Create;
  with Lista do
  begin
    name:='ListaRruff_ids';
  end;
 // Lista.Clear;
  if Especie <> EmptyStr then
  begin
    sltb := sldb.GetTable('SELECT rruff_id FROM rruff WHERE especie ="'+Especie+'" ;');// ORDER BY ASC ;');
  end
  else
  begin
     sltb := sldb.GetTable('SELECT rruff_id FROM rruff ;'); //ORDER BY ASC ;');
  end;
  if sltb.MoveFirst then
  begin
     while not sltb.EOF do
     begin
       Lista.Add(sltb.FieldByName['rruff_id']);
       sltb.Next;
     end;
  end;
  Result:=Lista;
  //Lista.Free;
end;

function TDados.Equipamentos: TStrings;
var Nomes:TStrings;
begin
  //Nomes:=TStrings.Create;
 // if Nomes.Count >0 then
 // Nomes.Clear;
  sltb:= sldb.GetTable('SELECT nome FROM instrumentos ;');
  if sltb.MoveFirst then
  begin
    while not sltb.EOF do
    begin
      Nomes.Append(sltb.FieldByName['nome']);
      sltb.Next;
    end;
  end;
  Result:=Nomes;
  //Nomes.Destroy;
end;

procedure TDados.AtualizaEquipamento(Novo: Boolean; Nome: String;
  Descricao: String; Localidade: String);
var ExecSQL:String;
begin
  //sldb.GetTable('SELECT nome, descricao, localidade FROM instrumentos ;');
  if Novo then
  begin
    ExecSQL:='INSERT INTO instrumentos (nome, descricao, localidade) VALUES ("'+Nome+'", "'+
      Descricao+'", "'+Localidade+'");'
  end
  else
  begin
    //sldb.ExecSQL('SELECT * FROM instrumentos WHERE nome="'+Nome+'" ;');
    ExecSQL:='UPDATE instrumentos SET descricao="'+Descricao+'" , localidade="'+Localidade+
      '" WHERE nome = "'+Nome+'" ;';
  end;
  sldb.ExecSQL(ExecSQL);
end;

end.
