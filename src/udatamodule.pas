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
    SdfDataSetGraficosValorX: TField;
    SdfDataSetGraficosValorY: TField;
    SdfDataSetPlanilhaMicrossonda: TSdfDataSet;
    Sqlite3DatasetInstrumentos: TSqlite3Dataset;
    Sqlite3DatasetPreencheAmostras: TSqlite3Dataset;
    Sqlite3DatasetAmostras: TSqlite3Dataset;
    Sqlite3DatasetPrinter: TSqlite3Dataset;
    Sqlite3DatasetCombobox: TSqlite3Dataset;
    Sqlite3DatasetDidatico: TSqlite3Dataset;
    Sqlite3DatasetGeral: TSqlite3Dataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    sldb: TSQLiteDatabase;
    sltb: TSQLiteTable;
    Datasource: TDatasource;
    Dataset: TSDFDataset;

    procedure CriarBD(Diretorio: string);
    function DeterminaBD(diretorio: string): boolean;
    function DeterminaArquivo(Especie: string; Rruff_id: string;
      Digito: string; Tipo: string; Equipamento: string; DirecaoLaser: string): string;
    procedure SalvaArquivo(Especie: string; Rruff_id: string;
      Digito: string; Tipo: string; Equipamento: string; DirecaoLaser: string;
      DiretorioArquivo: string);
    procedure AdicionaEspecie(Nome, Classe, Subclasse, Grupo, Subgrupo,
      Ocorrencia, Associacao, Cor, Brilho: string; Dureza_min, Dureza_max: real;
      Densidade_min, Densidade_max: string);
    procedure AdicionaAmostra(New: Boolean; Tabela:String; Especie: string;
      Rruff_id: string; Digito:Integer; Direcao:String; Equipment:String );
    procedure ExcluiAmostra(Especie: string; Rruff_id: string);
    procedure ExcluiMineral(Especie: string);
    function CriarDataset(Diretorio: string): TDatasource;
    { public declarations }
  end;

var
  Dados: TDados;
  MS: TMemoryStream;
  FS: TFileStream;

  num: integer;

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
  Onda514: string = '514 nm';
  Onda532: string = '532 nm';
  Onda580: string = '580 nm';
  Onda732: string = '732 nm';
  Onda780: string = '780 nm';

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
  if SQLite3DatasetInstrumentos.Active then
    SQLite3DatasetInstrumentos.Close;
  sldb.Free;
end;

procedure TDados.CriarBD(Diretorio: string);
var
  ExecSQL: string;
begin
  Sqlite3DatasetGeral.Close();
  try
    sldb := TSQLiteDatabase.Create(Diretorio);
    Sqlite3DatasetGeral.FileName := Diretorio;
    ExecSQL :=
      'CREATE TABLE minerais ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT UNIQUE  NOT NULL, [formula] TEXT, [classe] TEXT, [subclasse] TEXT, [grupo] TEXT, [subgrupo] TEXT, [ocorrencia] TEXT, [associacao] TEXT, [distincao] TEXT,';
    ExecSQL := ExecSQL +
      ' [aplicacao] TEXT, [alteracao] TEXT, [dureza_min] FLOAT, [dureza_max] FLOAT, [densidade_min] FLOAT, [densidade_max] FLOAT, [cor] TEXT, [brilho] TEXT, [traco] TEXT, [fratura] TEXT, [clivagem] TEXT, ';
    ExecSQL := ExecSQL +
      ' [luminescencia] TEXT, [magnetismo] TEXT, [difaneidade] TEXT, [sinal_optico] TEXT, [indice_refracao] TEXT, [angulo] TEXT, [cor_interferencia] TEXT, [cor_lamina] TEXT, [sinal_elongacao] TEXT, [birrefringencia] TEXT, [relevo] TEXT, ';
    ExecSQL := ExecSQL +
      ' [extincao] TEXT, [classe_cristalina] TEXT, [sistema] TEXT, [h_m] TEXT, [habito] TEXT, ';
    ExecSQL := ExecSQL +
      ' [imagem1] BLOB, [imagem2] BLOB, [imagem3] BLOB, [imagem4] BLOB, [imagem5] BLOB, [imagem6] BLOB, [imagem7] BLOB);';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE mineralogia ([id] INTEGER PRIMARY KEY NOT NULL, [campo] TEXT, [mineralogiaimagem1] BLOB, [mineralogiaimagem2] BLOB, [mineralogiaimagem3] BLOB, [mineralogiaimagem4] BLOB, [mineralogiaimagem5] BLOB);';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE rruff ([id] INTEGER PRIMARY KEY NOT NULL, [especie] TEXT NOT NULL, [rruff_id] TEXT NOT NULL, [numero] INTEGER, [quimicaideal] TEXT, ';
    ExecSQL := ExecSQL +
      ' [localidade] TEXT, [fonte] TEXT, [descricao_quimica] TEXT, [situacao] TEXT, [quimicamedida] TEXT, [arquivo_microssonda] TEXT, [pin_id] TEXT, ';
    ExecSQL := ExecSQL +
      ' [orientacao] TEXT, [microssonda] BLOB, [descricao_raman] TEXT, [comprimento_onda] TEXT, [descricao_broadscan] TEXT, '
      +
      '[instrumento_bs] TEXT, [descricao_infravermelho] TEXT, [instrumento_iv] TEXT, [resolucao] TEXT, [infravermelho] BLOB, [descricao_amostra] TEXT, [direcao_laser] TEXT,';
    ExecSQL := ExecSQL +
      ' [a] TEXT, [b] TEXT, [c] TEXT, [alpha] TEXT, [beta] TEXT, [gamma] TEXT, [volume] TEXT, [sistema_cristalino] TEXT, [descricao_difracao] TEXT, [arquivo_difracao] BLOB,';
    ExecSQL := ExecSQL +
      ' [rruff_id_quimica] TEXT, [rruff_id_raman] TEXT, [rruff_id_varredura] TEXT, [rruff_id_infravermelho] TEXT, [rruff_id_difracao] TEXT, [proprietario] TEXT, [imagem_amostra] BLOB, [imagem_quimica] BLOB);';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);

    ExecSQL :=
      'CREATE TABLE raman ([id] INTEGER PRIMARY KEY NOT NULL, [especie] TEXT NOT NULL, [rruff_id] TEXT NOT NULL, [direcao] Integer, [digito_id] Integer, [equipamento] TEXT,' + ' [arquivo_raman] BLOB);';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);

    ExecSQL :=
      'CREATE TABLE varredura ([id] INTEGER PRIMARY KEY NOT NULL, [especie] TEXT NOT NULL, [rruff_id] TEXT NOT NULL, [comprimento_onda] Integer NOT NULL, [digito] INTEGER, ' + '[equipamento] TEXT, [arquivo_varredura] BLOB );';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);

    ExecSQL := 'CREATE TABLE infravermelho ([id] INTEGER PRUMARY KEY NOT NULL, ' +
      '[especie] TEXT, [rruff_id] TEXT NOT NULL, [digito] INTEGER NOT NULL,' +
      '[direcao] INTEGER NOT NULL, [orientacao] TEXT, [descricao_raman] TEXT,' +
      '[equipamento] TEXT, [pin_id] TEXT, [arquivo_raman] BLOB);';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);

    //criar tabela difracao

    ExecSQL :=
      'CREATE TABLE instrumentos ([id] INTEGER PRIMARY KEY NOT NULL, [nome] UNIQUE NOT NULL, [descricao] TEXT, [localidade] TEXT);';
    Sqlite3DatasetGeral.ExecSQL(ExecSQL);
  finally
    Sqlite3DatasetGeral.Open();
    sldb.Free;
  end;
end;

procedure TDados.DataModuleCreate(Sender: TObject);
begin

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
  //Checa se a Tabela é compatível
  if sldb.TableExists('minerais') then
  begin
    if sldb.TableExists('mineralogia') then
    begin
      if sldb.TableExists('rruff') then
      begin
        if sldb.TableExists('raman') then
        begin
          if sldb.TableExists('varredura') then
          begin
            if sldb.TableExists('instrumentos') then
              Result := True
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
    end
    else
      Result := False;
  end
  else
    Result := False;
end;

function TDados.DeterminaArquivo(Especie: string; Rruff_id: string;
  Digito: string; Tipo: string; Equipamento: string; DirecaoLaser: string): string;
begin
  if Tipo = Microssonda then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, microssonda FROM rruff WHERE ' +
      'especie ="' + Especie + '" and rruff_id ="' + Rruff_id + '" ;');
    if sltb.RowCount > -1 then
    begin
      MS := sltb.FieldAsBlob(sltb.FieldIndex['microssonda']);
      if MS <> nil then
      begin
        MS.Position := 0;
        MS.SaveToFile(GetCurrentDir + '\Data\microssonda.csv');
        Result := GetCurrentDir + '\Data\microssonda.csv';
      end
      else
       Result := EmptyStr;
    end
    else
      Result:=EmptyStr;
  end
  else
  if Tipo = EspectroRaman then
  begin
    sltb := sldb.GetTable(
      'SELECT especie, rruff_id, digito, arquivo_raman, direcao FROM raman WHERE ('
      +
      'especie ="' + Especie + '" AND rruff_id ="' + Rruff_id +
      '" AND digito="' + Digito + '" ' + 'AND direcao ="' +
      DirecaoLaser + '" );');
    if sltb.RowCount > -1 then
    begin
      MS := sltb.FieldAsBlob(sltb.FieldIndex['arquivo_raman']);
      if MS <> nil then
      begin
        MS.Position := 0;
        MS.SaveToFile(GetCurrentDir + '\Data\raman.csv');
        Result := GetCurrentDir + '\Data\raman.csv';
      end
      else
        Result := EmptyStr;
    end
    else
      Result:=EmptyStr;
  end
  else
  if Tipo = AmplaVarredura then
  begin
    sltb := sldb.GetTable(
      'SELECT especie, rruff_id, arquivo_varredura, comprimento_onda FROM varredura WHERE '
        + 'especie ="' + Especie + '" and rruff_id ="' + Rruff_id +
      '" AND digito="'+Digito+'" AND comprimento_onda="' + DirecaoLaser + '";');
    if sltb.RowCount > -1 then
    begin
      MS := sltb.FieldAsBlob(sltb.FieldIndex['arquivo_varredura']);
      if MS <> nil then
      begin
        MS.Position := 0;
        MS.SaveToFile(GetCurrentDir + '\Data\varredura.csv');
        Result := GetCurrentDir + '\Data\varredura.csv';
      end
      else
        Result := EmptyStr;
    end
    else
      Result:=EmptyStr;
  end
  else
  if Tipo = Infravermelho then
  begin
    sltb := sldb.GetTable('SELECT especie, rruff_id, arquivo_infravermelho FROM ' +
      ' infravermelho WHERE especie ="' + Especie + '" and rruff_id ="' +
      Rruff_id + '" AND digito="' + Digito + '" ;');
    if sltb.RowCount > -1 then
    begin
      MS := sltb.FieldAsBlob(sltb.FieldIndex['arquivo_infravermelho']);
      if MS <> nil then
      begin
        MS.Position := 0;
        MS.SaveToFile(GetCurrentDir + '\Data\infravermelho.csv');
        Result := GetCurrentDir + '\Data\infravermelho.csv';
      end
      else
        Result := EmptyStr;
    end
    else
    Result :=EmptyStr;
  end
  else
  if Tipo = Difracao then
  begin
    sltb := sldb.GetTable(
      'SELECT especie, rruff_id, digito, arquivo_difracao FROM difracao WHERE ' +
      'especie ="' + Especie + '" and rruff_id ="' + Rruff_id + '" ' +
      'AND digito="' + Digito + '" ;');
    if sltb.RowCount > -1 then
    begin
      MS := sltb.FieldAsBlob(sltb.FieldIndex['arquivo_difracao']);
      if MS <> nil then
      begin
        MS.Position := 0;
        MS.SaveToFile(GetCurrentDir + '\Data\difracao.csv');
        Result := GetCurrentDir + '\Data\difracao.csv';
      end
      else
        Result := EmptyStr;
    end
    else
    Result:=EmptyStr;
  end
  else
    ShowMessage('Tipo Inválido: '+Tipo);
end;

procedure TDados.SalvaArquivo(Especie: string; Rruff_id: string;
  Digito: string; Tipo: string; Equipamento: string; DirecaoLaser: string;
    DiretorioArquivo: string);

var
  ComprimentoOnda: string;
begin
  if Tipo = Microssonda then
  begin
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set microssonda = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '";', fs);
    FS.Free;
  end;
  if Tipo = EspectroRaman then
  begin
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE raman set arquivo_raman = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '" AND digito ="' +
      Digito + '" AND direcao = "' +
      DirecaoLaser + '"  ;', fs);
    FS.Free;
  end;
  if Tipo = AmplaVarredura then
  begin
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE varredura SET arquivo_varredura = ? WHERE (especie = "' +
      Especie + '" AND rruff_id="' + Rruff_id + '" AND digito = "' +
      Digito + '" AND comprimento_onda = "' +
      DirecaoLaser + '");', fs);
    FS.Free;
  end;
  if Tipo = Infravermelho then
  begin
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE infravermelho set arquivo_infravermelho = ? WHERE especie = "'
      + Especie + '" and rruff_id="' + Rruff_id + '" AND digito="' +
      Digito + '" ;', fs);
    FS.Free;
  end;
  if Tipo = Difracao then
  begin
    FS := TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE difracao set arquivo_difracao = ? WHERE especie = "' +
      Especie + '" and rruff_id="' + Rruff_id + '" AND digito="' +
      Digito + '" ;', fs);
    FS.Free;
  end;
end;

procedure TDados.AdicionaEspecie(Nome, Classe, Subclasse, Grupo,
  Subgrupo, Ocorrencia, Associacao, Cor, Brilho: string; Dureza_min, Dureza_max: real;
  Densidade_min, Densidade_max: string);
begin
  sldb.ExecSQL('INSERT INTO minerais (nome, dureza_min, dureza_max, ' +
    'densidade_min,' + 'densidade_max) VALUES ("' + Nome + '", "' + FloatToStr(
    Dureza_min) + '","' + FloatToStr(Dureza_max) + '", "' + Densidade_min + '", "' +
    Densidade_max + '");');
  sldb.ExecSQL('UPDATE minerais SET classe="' + Classe + '", subclasse="' + Subclasse +
    '", grupo="' + Grupo + '", subgrupo="' + Subgrupo + '", ocorrencia="' + Ocorrencia +
    '", associacao="' + Associacao + '", cor="' + Cor + '", brilho="' + Brilho + '" WHERE' +
    ' nome="' + Nome + '" ;');
end;

procedure TDados.AdicionaAmostra(New: Boolean; Tabela:String; Especie: string;
  Rruff_id: string; Digito:Integer; Direcao:String; Equipment:String );
var
  ExecSQL: string;
begin
  if New then
  begin
    if Rruff_id = EmptyStr then
    Rruff_id := 'A00000';
    ExecSQL := 'INSERT INTO rruff (especie, rruff_id, digito) VALUES("' + Especie;
    ExecSQL := ExecSQL + '" , "' + Rruff_id + '","0");';
    sldb.ExecSQL(ExecSQL);

    //raman
  //514
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito,  direcao, equipamento) '
    +
    ' VALUES ("' + Especie + '" , "' + Rruff_id + '", "0", "' +
    Onda514 + '","");';
  sldb.ExecSQL(ExecSQl);
  //532
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito,  direcao, equipamento) '
    +
    'VALUES ("' + Especie + '" , "' + Rruff_id + '", "0", "' +
    Onda532+ '","");';
  sldb.ExecSQL(ExecSQl);
  //580
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito,  direcao, '+
    'equipamento) VALUES ("'+ Especie + '" , "' + Rruff_id + '", "0", "' +
      Onda580 + '","");';
  sldb.ExecSQL(ExecSQl);
  //732
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito,  direcao, '+
    ' equipamento) ' + 'VALUES ("' + Especie + '" , "' + Rruff_id + '", "0", "' +
    Onda732 + '","");';
  sldb.ExecSQL(ExecSQl);
  //780
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito,  direcao, '+
   'equipamento) VALUES ("'+ Especie + '" , "' + Rruff_id + '", "0", "' +
    Onda780+ '","");';
  sldb.ExecSQL(ExecSQl);

  //varredura       //514nm
  ExecSql := 'INSERT INTO varredura (especie, rruff_id, digito, '+
  ' comprimento_onda, equipamento)'
    + '  VALUES ("' + Especie + '" , "' + Rruff_id + '", "0", "' +
    Onda514 + '","");';
  sldb.ExecSQL(ExecSQL);
  //532nm
  ExecSql := 'INSERT INTO varredura (especie, rruff_id, digito, '+
    'comprimento_onda, equipamento) VALUES ("'+ Especie + '" , "' + Rruff_id +
      '", "0", "'+ Onda532 + '","");';
  sldb.ExecSQL(ExecSQL);              //580nm
  ExecSql := 'INSERT INTO varredura (especie, rruff_id, digito, '+
  'comprimento_onda, equipamento) VALUES ("'+ Especie + '" , "' + Rruff_id +
    '", "0", "' + Onda580 + '","");';
  sldb.ExecSQL(ExecSQL);
  //732nm
  ExecSql := 'INSERT INTO varredura (especie, rruff_id, digito, '+
    'comprimento_onda, equipamento) VALUES ("'+ Especie + '" , "' + Rruff_id +
      '", "0", "' + Onda732 + '","");';
  sldb.ExecSQL(ExecSQL);              //780nm
  ExecSql := 'INSERT INTO varredura (especie, rruff_id, digito, '+
    'comprimento_onda, equipamento) VALUES ("'+ Especie + '" , "' + Rruff_id +
      '", "0", "' + Onda780 + '","");';
  sldb.ExecSQL(ExecSQL);

  //infravermelho
  ExecSQL := 'INSERT INTO infravermelho (especie, rruff_id, digito'+
   ', equipamento) VALUES ("' + Especie + '" , "' + Rruff_id + '" , "0","");';
  sldb.ExecSQL(ExecSQL);
  //Difracao
  ExecSQL := 'INSERT INTO difracao (especie, rruff_id, digito, equipamento)' +
    ' VALUES ("' + Especie + '" , "' + Rruff_id + '" , "0","");';
  sldb.ExecSQL(ExecSQL);
  end
  else
  begin
    ExecSql := 'INSERT INTO '+Tabela+ ' (especie, rruff_id, digito, equipamento)'+
      ' VALUES ("'+Especie+'", "'+Rruff_id+'", "'+IntToStr(Digito)+'", "'+
        Equipment+'"); ';
    sldb.ExecSQL(ExecSQL);
  end;
  //raman
  //angulo0
 { ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_raman, direcao, equipamento) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", null, "' +
    RetornaIndiceDirecaoLaser(Angulo0) + '", "");';
  sldb.ExecSQL(ExecSQL);
  //angulo45
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_raman, direcao, equipamento) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", null, "' +
    RetornaIndiceDirecaoLaser(Angulo45) + '","");';
  sldb.ExecSQL(ExecSQL);
  //angulo90
  ExecSQL := 'INSERT INTO raman (especie, rruff_id, digito_raman, direcao,equipamento) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", null , "' +
    RetornaIndiceDirecaoLaser(Angulo90) + '","");';
  sldb.ExecSQL(ExecSQL);
  //nao polarizado
  ExecSQL := 'INSERT INTO raman (especie, rruff_id,  digito_raman, direcao, equipamento) VALUES ("'
    + Especie + '" , "' + Rruff_id + '", null, "' +
    RetornaIndiceDirecaoLaser(Depolarizado) + '","");';
  sldb.ExecSQL(ExecSQL);
  }
end;

procedure TDados.ExcluiAmostra(Especie: string; Rruff_id: string);
begin
  if Especie = EmptyStr then
  begin
    sldb.ExecSQL('DELETE FROM rruff WHERE (rruff_id ="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM raman WHERE (rruff_id="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM varredura WHERE (rruff_id="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM difracao WHERE (rruff_id="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM infravermelho WHERE (rruff_id="' + Rruff_id+'");');
  end
  else
  begin
    sldb.ExecSQL('DELETE FROM rruff WHERE (especie="' + Especie +
      '" and rruff_id ="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM raman WHERE (especie="' + Especie +
      '" and rruff_id="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM varredura WHERE (especie="' + Especie +
      '" and rruff_id="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM difracao WHERE (especie="' + Especie +
      '" and rruff_id="' + Rruff_id + '");');
    sldb.ExecSQL('DELETE FROM infravermelho WHERE (especie="' + Especie +
      '" and rruff_id="' + Rruff_id + '");');
  end;
end;

procedure TDados.ExcluiMineral(Especie: string);
begin
  sldb.ExecSQL('DELETE FROM minerais WHERE (nome="' + Especie + '");');
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
