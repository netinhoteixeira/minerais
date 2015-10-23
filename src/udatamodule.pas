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
    DataSourceLanguage: TDataSource;
    DatasourcePrinter: TDatasource;
    DatasourceReport: TDatasource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    SdfDataSetLanguage: TSdfDataSet;
    Sqlite3DatasetPrinter: TSqlite3Dataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    Table1:String;
    Table2:String;
    Table3:String;
    Table4:String;
    Table5:String;
    Table6:String;

    DatabaseMinerals: TSQLiteDatabase;
    TableGeneral: TSQLiteTable;
    TablePhysical: TSQLiteTable;
    TableOptics: TSQLiteTable;
    TableChryst: TSQLiteTable;
    TableImages: TSQLiteTable;
    TableMineralogy: TSQLiteTable;
    Datasource: TDatasource;
    Dataset: TSDFDataset;

    DatabaseMineralFileName: String;

    Caminho: String;
    function AddMineral(Nome:String):Integer;
    procedure SetDatabase(Filename:String);
    procedure UpdateField(Table, Field, NewValue, Especie:String);
    procedure CreateDatabase(Tipo, Diretorio: String);
    function ChooseDatabase(Tipo, Directory:String): Boolean;
    procedure ExcluiMineral(Especie: string);

    function MineralFiltered(strName, Table,FieldStr, Field:String):Boolean;
    function ReturnDistinctField(Field, Table:String):TStrings;
    function ReturnAllMinerals(Order:String):TStrings;
    function SelectSQL(Table, Mineral:String):String;
    procedure UpdateGeneralInfo(Nome, Composicao, Classe, Subclasse, Grupo,
      Subgrupo, Ocorrencia, Associacao, Distincao, Alteracao, Aplicacao:String);
    procedure UpdatePhysicalProp(DurezaMin, DurezaMax, DensidadeMin, DensidadeMax:Real;
      Cor, Traco, Brilho, Clivagem, Fratura, Magnetismo, Luminescencia,
        Diafaneidade, Nome:String);
    procedure UpdateOpticalProp(RefracaoMin, RefracaoMax, BirrMin, BirrMax: Real;
      SinalOptico, DescSinalOptico, DescRefracao, DescBirrefringencia, CorInterferencia,
      CorLamina, Elongacao,Relevo, Angulo2V, Extincao, Nome:String);
    procedure UpdateCrystallography(Sistema,  Classe, Simbologia, Habito, Nome:String);
    { public declarations }
  end;
const
  General:String = 'general';
  Physical:String = 'physical';
  Optics:String = 'optics';
  Chryst:String = 'chryst';
  Images:String = 'images';
  Mineralogy:String = 'mineralogy';

var
  Dados: TDados;
  MS: TMemoryStream;
  FS: TFileStream;
  num: Integer;
  Sep: Char;

implementation

{$R *.lfm}

{ TDados }

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  if SQLite3DatasetPrinter.Active then
    SQLite3DatasetPrinter.Close;
  DatabaseMinerals.Free;
end;

function TDados.AddMineral(Nome: String): Integer;
var SQLstr:String;
begin
  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
    'SELECT nome FROM '+Table1+' WHERE nome="' + Nome+ '" ; ');
  if Dados.TableGeneral.Count > 0 then
    Result:=1
  else
  begin
    SQLstr:='INSERT INTO '+Dados.Table1+' (nome) VALUES ("'+Nome+'") ; ';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr:='INSERT INTO '+Dados.Table2+' (nome, dureza_min, dureza_max, densidade_min,'+
      'densidade_max) VALUES ("'+Nome+'","1","10","0","30") ;';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr:='INSERT INTO '+Table3+' (nome, refracao_min, refracao_max, '+
      'birr_min, birr_max) VALUES ("'+Nome+'", "0", "0", "0", "0") ;';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr:='INSERT INTO '+Dados.Table4+' (nome) VALUES ("'+Nome+'") ; ';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr:='INSERT INTO '+Dados.Table5+' (nome) VALUES ("'+Nome+'") ; ';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
  end;
  Result:=0;
end;

procedure TDados.SetDatabase(Filename: String);
begin
  {
  DatabaseMineralFilename:=Filename;
  DatabaseMinerals := TSQLiteDatabase.Create(Filename);
  FormFichaEspecie.EditingMode(True);
  }
end;

procedure TDados.UpdateField(Table, Field, NewValue, Especie : String);
begin
  if DatabaseMineralFilename <> EmptyStr then
  begin
    if FileExists(DatabaseMineralFilename) then
    begin
      TableGeneral:= DatabaseMinerals.GetTable('UPDATE '+Table+' SET '+
        Field+ ' = "'+NewValue+'" WHERE nome = "'+Especie+'" ; ' );
    end;
  end;
end;

procedure TDados.CreateDatabase(Tipo, Diretorio: String);
var
  ExecSQL: string;
begin
  try
    DatabaseMinerals := TSQLiteDatabase.Create(Diretorio);
    ExecSQL :=
      'CREATE TABLE '+Table1+' ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT '+
      'UNIQUE  NOT NULL, [formula] TEXT, [classe] TEXT, [subclasse] TEXT, '+
      '[grupo] TEXT, [subgrupo] TEXT, [ocorrencia] TEXT, [associacao] TEXT,'+
      '[distincao] TEXT, [aplicacao] TEXT,[alteracao] TEXT);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE '+Table2+' ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT '+
      'UNIQUE  NOT NULL, '+
      '[dureza_min] FLOAT, [dureza_max] FLOAT, '+
      '[densidade_min] FLOAT, [densidade_max] FLOAT, [cor] TEXT,'+
      '[brilho] TEXT, [traco] TEXT, [fratura] TEXT, [clivagem] TEXT, '+
      '[luminescencia] TEXT, [magnetismo] TEXT, [diafaneidade] TEXT);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL:= 'CREATE TABLE '+Table3+' ([id] INTEGER PRIMARY KEY NOT NULL, '+
      '[nome] TEXT UNIQUE NOT NULL,'+
      '[sinal_optico] TEXT, [desc_sinal_optico] TEXT, '+
      '[refracao_min] FLOAT DEFAULT 0, [refracao_max] FLOAT DEFAULT 0, '+
      '[birr_min] FLOAT DEFAULT 0, [birr_max] FLOAT DEFAULT 0, '+
      '[desc_refracao] TEXT, [desc_birr] TEXT, [cor_interferencia] TEXT, '+
      '[cor_lamina] TEXT, [sinal_elongacao] TEXT, [relevo] TEXT, '+
      '[angulo] TEXT, [extincao] TEXT) ; ';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE '+Table4+' ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT '+
      'UNIQUE  NOT NULL, '+
      '[classe_cristalina] TEXT, [sistema] TEXT, [h_m] TEXT,'+
      '[habito] TEXT);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE '+Table5+' ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT '+
      'UNIQUE  NOT NULL, '+
      '[imagem1] BLOB, [imagem2] BLOB, [imagem3] BLOB, '+
      '[imagem4] BLOB, [imagem5] BLOB, [imagem6] BLOB, [imagem7] BLOB);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE '+Table6+' ([id] INTEGER PRIMARY KEY NOT NULL, [campo] '+
      'TEXT, [texto] TEXT, [imagem1] BLOB, [imagem2] BLOB, '+
      '[imagem3] BLOB, [imagem4] BLOB, '+
      '[imagem5] BLOB, [imagem6] BLOB, '+
      '[imagem7] BLOB );';
    DatabaseMinerals.ExecSQL(ExecSQL);
    finally

    end;
end;

procedure TDados.DataModuleCreate(Sender: TObject);
begin
  Table1:=General;
  Table2:=Physical;
  Table3:=Optics;
  Table4:=Chryst;
  Table5:=Images;
  Table6:=Mineralogy;
  {$IFDEF WIN32}
    Sep:='\';
  {$ENDIF}
  {$IFDEF UNIX}
    Sep:='/';
  {$ENDIF}
  Caminho:=GetCurrentDir+Sep;
end;
      //Verifica se o Banco de dados é compatível
function TDados.ChooseDatabase(Tipo, Directory: String): Boolean;
var Compatible:Boolean;
begin
  Compatible:=False;
  DatabaseMinerals := TSQLiteDatabase.Create(Directory);
  if DatabaseMinerals.TableExists(Table1) then
  begin
    if DatabaseMinerals.TableExists(Table2) then
    begin
      if DatabaseMinerals.TableExists(Table3) then
      begin
        if DatabaseMinerals.TableExists(Table4) then
        begin
          if DatabaseMinerals.TableExists(Table5) then
          begin
            if DatabaseMinerals.TableExists(Table6) then
            begin
              Compatible:=True;
            end;
          end;
        end;
      end;
    end;
  end;
  if Compatible then
  begin
    with SQLite3DatasetPrinter do
    begin
      Filename := Directory;
    end;
  end;
    Result:= Compatible;
end;

procedure TDados.ExcluiMineral(Especie: string);
begin
  DatabaseMinerals.ExecSQL('DELETE FROM '+Table1+' WHERE (nome="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM '+Table2+' WHERE (nome="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM '+Table3+' WHERE (nome="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM '+Table4+' WHERE (nome="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM '+Table5+' WHERE (nome="' + Especie + '");');
end;

function TDados.MineralFiltered(strName, Table, FieldStr, Field: String
  ): Boolean;
var
  eliminar: boolean;
  I, K: integer;
  StrAux: string;
begin
  Eliminar := True;
  if (FieldStr = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    TableGeneral:= DatabaseMinerals.GetTable('SELECT '+Field+' FROM '+Table+
      ' WHERE nome = "'+Name+'" ;');
    if TableGeneral.Count > 0 then
      if (TableGeneral.FieldByName[Field] <> EmptyStr) then
      begin
        K := (Length(FieldStr));
        for I := 0 to K do
        begin
          StrAux := Copy(TableGeneral.FieldByName[Field], I, K);
          if (UpCase(StrAux) = UpCase(FieldStr)) then
            Eliminar := False;
        end;
      end;
  end;
  Result := Eliminar;
end;

function TDados.ReturnDistinctField(Field, Table: String): TStrings;
var SQLstr:String; List: TStrings;
begin
  List:=TStringList.Create;
  SQLstr:='SELECT DISTINCT '+Field+' FROM '+Table+' ;';
  TableGeneral:=DatabaseMinerals.GetTable(SQLStr);
  if TableGeneral.Count > 0 then
    if TableGeneral.MoveFirst then
      while not TableGeneral.EOF do
      begin
        List.Append(TableGeneral.Fields[0]);
        TableGeneral.Next;
      end;
  Result:=List;
end;

function TDados.ReturnAllMinerals(Order: String): TStrings;
var SQLstr:String; List:TStrings;
begin
  List:=TStringList.Create;
  SQLstr:='SELECT nome FROM '+Table1+' ORDER BY '+Order+' ; ';
  TableGeneral:=DatabaseMinerals.GetTable(SQLstr);
   if TableGeneral.Count >0  then
    if TableGeneral.MoveFirst then
      while (not TableGeneral.EOF) do
      begin
        List.Append(TableGeneral.Fields[0]);
        TableGeneral.Next;
      end;
   Result:=List;
end;

function TDados.SelectSQL(Table, Mineral: String): String;
var SQLstr:String;
begin
  if Trim(mineral) = EmptyStr then
  begin
     //esta parte foi mudada para funcao SQLSimpleFiltered
  end
  else
  begin
    if Trim(Table) = Table1 then
    begin
      SQLstr:='SELECT nome, formula, classe, subclasse, grupo, subgrupo, '+
      'ocorrencia, associacao, distincao, alteracao, aplicacao '+
      'FROM '+Table1+
      '  WHERE nome  = "'+Mineral+'" ;';
    end
    else
    if Trim(Table) = Table2 then
    begin
      SQLstr:='SELECT nome, dureza_min, dureza_max, densidade_min, densidade_max,'+
      'cor, traco, brilho, clivagem, fratura, magnetismo, luminescencia, '+
      'diafaneidade FROM '+Table2+
      '  WHERE nome  = "'+Mineral+'" ;';
    end
    else
    if Trim(Table) = Table3 then
    begin
      SQLstr:='SELECT nome, refracao_min, refracao_max, birr_min, birr_max, '+
      'desc_refracao, desc_birr, sinal_optico, desc_sinal_optico, cor_interferencia,'+
      'cor_lamina, sinal_elongacao, relevo, angulo, extincao FROM '+Table3+
      '  WHERE nome  = "'+Mineral+'" ;';
    end
    else
    if Trim(Table) = Table4 then
    begin
      SQLstr:='SELECT nome, sistema, classe_cristalina, h_m, habito FROM '+Table4+
      '  WHERE nome  = "'+Mineral+'" ;';
    end;
  end;
  Result:=SQLstr;
end;

procedure TDados.UpdateGeneralInfo(Nome, Composicao, Classe, Subclasse, Grupo,
  Subgrupo, Ocorrencia, Associacao, Distincao, Alteracao, Aplicacao: String
  );
var SQLstr:String;
begin
  SQLstr:='UPDATE '+Table1+' SET '+
    'formula = "'+Composicao+'", classe = "'+Classe+'", '+
    'subclasse = "'+Subclasse+'", grupo = "'+Grupo+'", '+
    'subgrupo = "'+SubGrupo+'", ocorrencia = "'+Ocorrencia+'", '+
    'associacao = "'+Associacao+'", distincao = "'+Distincao+'", '+
    'alteracao = "'+Alteracao+'", aplicacao = "'+Aplicacao+'" '+
    'WHERE nome ="'+Nome+'" ;';
  DatabaseMinerals.ExecSQL(SQLstr);
end;

procedure TDados.UpdatePhysicalProp(DurezaMin, DurezaMax, DensidadeMin,
  DensidadeMax: Real; Cor, Traco, Brilho, Clivagem, Fratura, Magnetismo,
  Luminescencia, Diafaneidade, Nome: String);
var SQLstr:String;
begin  //to do: formatar valores reais para apenas uma casa decimal
  SQLstr:= 'UPDATE '+Table2+' SET '+
  'dureza_min ="'+FloatToStr(DurezaMin)+'" , dureza_max = "'+FloatToStr(DurezaMax)+'" , '+
  'densidade_min = "'+FloatToStr(DensidadeMin)+'" , densidade_max = "'+FloatToStr(DensidadeMax)+'" , '+
  'cor = "'+Cor+'" , traco = "'+Traco+'", '+
  'brilho = "'+Brilho+'" , clivagem = "'+Clivagem+'" , fratura = "'+Fratura+'" ,'+
  'magnetismo = "'+Magnetismo+'" , luminescencia = "'+Luminescencia+'" , '+
  'diafaneidade = "'+Diafaneidade+'" '+
  'WHERE nome = "'+Nome+'" ;';
  DatabaseMinerals.ExecSQL(SQLstr);
end;

procedure TDados.UpdateOpticalProp(RefracaoMin, RefracaoMax, BirrMin,
  BirrMax: Real; SinalOptico, DescSinalOptico, DescRefracao,
  DescBirrefringencia, CorInterferencia, CorLamina, Elongacao, Relevo,
  Angulo2V, Extincao, Nome: String);
var SQLstr:String;
begin  //to do: formatar valores reais para 3 casas decimais (FloatToStr(valor, "%.3f"))
  SQLstr:='UPDATE '+Table3+' SET '+
  'refracao_min = "'+FloatToStr(RefracaoMin)+'", refracao_max = "'+FloatToStr(RefracaoMax)+'" , '+
  'birr_min = "'+FloatToStr(BirrMin)+'", birr_max = "'+FloatToStr(BirrMax)+'", '+
  'indice_refracao = "'+DescRefracao+'", sinal_optico = "'+SinalOptico+'"'+
  'desc_sinal_optico = "'+DescSinalOptico+'" , desc_birr = "'+DescBirrefringencia+'", '+
  'cor_interferencia = "'+CorInterferencia+'", cor_lamina = "'+CorLamina+'" , '+
  'sinal_elongacao = "'+Elongacao+'" , relevo = "'+Relevo+'", '+
  'angulo = "'+Angulo2V+'", extincao  = "'+Extincao+'" '+
  'WHERE nome = "'+Nome+'" ; ';
  DatabaseMinerals.ExecSQL(SQlStr);
end;

procedure TDados.UpdateCrystallography(Sistema, Classe, Simbologia,
  Habito, Nome: String);
var SQLstr:String;
begin
  SQLstr:='UPDATE '+Table4+' SET '+
  'sistema = "'+Sistema+'" , classe_cristalina = "'+Classe+'" , '+
  'h_m = "'+Simbologia+'" , habito = "'+Habito+'" '+
  'WHERE nome = "'+Nome+'"  ; ';
  DatabaseMInerals.ExecSQL(SQlstr);
end;

end.
