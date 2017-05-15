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
  Classes, SysUtils, FileUtil,
  unitconfigfile, Dialogs, unitlanguage, sqldb, sqlite3conn,
  Graphics, db;

type

  TOrder = (ASCII, Hardness, Density, Birrefringence);

  { TDados }

  TDados = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
    Connector: TSQLConnector;
  public
    { public declarations }
    Query: TSQLQuery;
    Transaction: TSQLTransaction;

    Table1: string;
    Table2: string;
    Table3: string;
    Table4: string;
    Table5: string;

    DatabaseMineralFileName: string;
    AppPath:String;

    procedure AddBlobField(ImageFilename, MineralName, Category, Description: string);
    function AddMineral(Nome: string): Boolean;
    procedure UpdateField(Table, Field, NewValue, Especie: string);

    procedure ClearBlobField(Table, Field, Especie: string);
    procedure ClearBlobIdField(Table, Field, Specie: String; Num: integer);

    procedure CreateDatabase(Diretorio: string);
    procedure ExcluiMineral(Especie: string);
    procedure ExcludeAllMinerals;

    function GetImagesCount: integer;

    function MineralFiltered(strName, Table, FieldStr, Field: string): boolean;
    function MineralBiggerThan(strName, Table, Value, Field: string): boolean;

    function MineralImagesCount(Specie: String): integer;

    function MineralLessThan(strName, Table, Value, Field: string): boolean;
    function ReturnDistinctField(Field, Table: String): TStrings;
    function ReturnAllMinerals(Order: TOrder): TStrings;
    function ReturnSimpleFiltered(strName, ClassStr, SubclassStr,
      Group, Subgroup, Occurrence, Association, MinHard, MaxHard: string;
      MinDens, MaxDens: real; Order: TOrder): TStrings;
    function SelectSQL(Table, Mineral: string): string;

    function SelectClasses:TStrings;

    function SelectImage(FieldStr: string; Index: integer): TJpegImage;

    function SelectSubclasses:TStrings;
    function SelectSubclasses(Classe: String):TStrings;
    function SelectGroups:TStrings;
    function SelectGroups(Classe:String):TStrings;
    function SelectGroups_(SubClasse:String):TStrings;
    function SelectGroups(Classe, SubClass:String):TStrings;
    function SelectSubGroups(Classe, Subclass, Group:String):TStrings;

    function SetDatabase(Filename:String):Boolean;

    procedure UpdateGeneralInfo(Nome, Composicao, Classe, Subclasse,
      Grupo, Subgrupo, Ocorrencia, Associacao, Distincao, Alteracao, Aplicacao: string);
    procedure UpdatePhysicalProp(DurezaMin, DurezaMax, DensidadeMin,
      DensidadeMax, Cor, Traco, Brilho, Clivagem, Fratura, Magnetismo,
      Luminescencia, Nome: string);
    procedure UpdateOpticalProp(BirrMax, SinalOptico,
      DescSinalOptico, DescRefracao, DescBirrefringencia, {CorInterferencia,}
      CorLamina, Elongacao, Relevo, Angulo2V, Extincao, Nome: string);
    procedure UpdateCrystallography(Sistema, Classe, Simbologia, Habito, Nome: string);
    function FindImageId: Integer;
    function GetCount(NameStr:String): Integer;
    function ValidateDatabase(Path: string): boolean;
  end;

const

  General: string = 'general';
  Physical: string = 'physical';
  Optics: string = 'optical';
  Chryst: string = 'chrystaline';
  Images: string = 'images';

  FieldId = 'id';
  ////Fields Names
  FieldName: string = 'name';
  FieldComposition: string = 'composition';
  FieldClass: string = 'classes';
  FieldSubClass: string = 'subclasses';
  FieldGroup: string = 'groups';
  FieldSubGroup: string = 'subgroups';
  FieldOccurrence: string = 'occurrence';
  FieldAssociation: string = 'association';
  FieldDistinction: string = 'distinction';
  FieldAlteration: string = 'alteration';
  FieldUse: string = 'applications';

  FieldHardMin: string = 'hard_min';
  FieldHardMax: string = 'hard_max';
  FieldDensMin: string = 'dens_min';
  FieldDensMax: string = 'dens_max';
  FieldColor: string = 'color';
  FieldStreak: string = 'streak';
  FieldBrightness: string = 'brightness';
  FieldCleavage: string = 'cleavage';
  FieldFracture: string = 'fracture';
  FieldMagnetism: string = 'magnetism';
  FieldLuminescense: string = 'luminescence';

  FieldOpticSign: string = 'sign';
  FieldOpticSignDescr: string = 'sign_desc';
  //FieldBirrMin: string = 'birr_min'; //retirar
  FieldBirrMax: string = 'birr_max';
  FieldBirrefringence: string = 'birr_desc';
  FieldRefractionIndex: string = 'refraction';
  FieldColorBlade: string = 'color_blade';
  FieldElongationSign: string = 'elongation';
  FieldRelief: string = 'relief';
  Field2VAngle: string = 'angle2v';
  FieldExtinction: string = 'extinction';
  FieldInterference:string = 'interference';//Add

  FieldHabit: string = 'habit';
  FieldCrystSystem: string = 'system';
  FieldSymbology: string = 'symbology';
  FieldChrystClass: string = 'chryst_class';

  FieldImage: String = 'image';
  FieldDescription:String = 'description';
  FieldCategory:String = 'category';
// end of fields names

var
  Dados: TDados;
  MS: TMemoryStream;
  FS: TFileStream;
  num: integer;
  Sep: char;

implementation

{$R *.lfm}

{ TDados }

procedure TDados.DataModuleCreate(Sender: TObject);
begin
  Table1 := General;
  Table2 := Physical;
  Table3 := Optics;
  Table4 := Chryst;
  Table5 := Images;

  {$IFDEF WIN32}
  Sep := '\';
  {$ENDIF}
  {$IFDEF UNIX}
  Sep := '/';
  {$ENDIF}

  //Create Components
  Connector:= TSQLConnector.Create(nil);
  Query:= TSQLQuery.Create(nil);
  Transaction:= TSQLTransaction.Create(nil);
  //
  Connector.Transaction:=Transaction;
  Connector.ConnectorType:='SQLite3';
  //Connector.ConnectorType:='Firebird';
  Query.DataBase:=Connector;

  AppPath := GetCurrentDir + Sep;
  if ValidateDatabase(ConfigGetDatabase) then
    DatabaseMineralFilename := ConfigGetDatabase
  else
  begin
    DatabaseMineralFilename:=EmptyStr;
    //ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end;

  if DatabaseMineralFileName <> EmptyStr then
  begin
    Connector.DatabaseName:=DatabaseMineralFilename;
  end;
end;

procedure TDados.CreateDatabase(Diretorio: string);
var
  ExecSQL: string;
begin
  try
    if Connector.Connected then
    begin
      Connector.Close(True);
    end;
    DatabaseMineralFileName:=Diretorio;
    Connector.DatabaseName:=Diretorio;
    if not Connector.Connected then
      Connector.Open;
    if not Transaction.Active then
      Transaction.StartTransaction;
    ExecSQL :=
      'CREATE TABLE ' + Table1 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'UNIQUE  NOT NULL, ['+FieldComposition+'] TEXT, ['+FieldClass+'] TEXT, ['+FieldSubClass+'] TEXT, ' +
      '['+FieldGroup+'] TEXT, ['+FieldSubGroup+'] TEXT, ['+FieldOccurrence+'] TEXT, ['+FieldAssociation+'] TEXT,' +
      '['+FieldDistinction+'] TEXT, ['+FieldUse+'] TEXT,['+FieldAlteration+'] TEXT);';
    Connector.ExecuteDirect(ExecSQL);
    //Transaction.Commit;
    ExecSQL :=
      'CREATE TABLE ' + Table2 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'UNIQUE  NOT NULL, ' + '['+FieldHardMin+'] FLOAT DEFAULT 0, ['+FieldHardMax+'] FLOAT DEFAULT 10, ' +
      '['+FieldDensMin+'] FLOAT, ['+FieldDensMax+'] FLOAT, ['+FieldColor+'] TEXT,' +
      '['+FieldBrightness+'] TEXT, ['+FieldStreak+'] TEXT, ['+FieldFracture+'] TEXT, ['+FieldCleavage+'] TEXT, ' +
      '['+FieldLuminescense+'] TEXT, ['+FieldMagnetism+'] TEXT);';
    Connector.ExecuteDirect(ExecSQL);
    //Transaction.Commit;
    ExecSQL := 'CREATE TABLE ' + Table3 + ' ([id] INTEGER PRIMARY KEY NOT NULL, ' +
      '['+FieldName+'] TEXT UNIQUE NOT NULL,' +
      '['+FieldOpticSign+'] TEXT, ['+FieldOpticSignDescr+'] TEXT, ' +
      '['+FieldBirrMax+'] FLOAT DEFAULT 0, ' +
      '['+FieldRefractionIndex+'] TEXT, ['+FieldBirrefringence+'] TEXT, ['+FieldInterference+'] TEXT, ' +
      '['+FieldColorBlade+'] TEXT, ['+FieldElongationSign+'] TEXT, ['+FieldRelief+'] TEXT, ' +
      '['+Field2VAngle+'] TEXT,  ' +
      '['+FieldExtinction+'] TEXT) ; ';
    Connector.ExecuteDirect(ExecSQL);
    //Transaction.Commit;
    ExecSQL :=
      'CREATE TABLE ' + Table4 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'UNIQUE  NOT NULL, ' + '['+FieldChrystClass+'] TEXT, ['+FieldCrystSystem+'] TEXT, ['+FieldSymbology+'] TEXT,' +
      '['+FieldHabit+'] TEXT);';
    Connector.ExecuteDirect(ExecSQL);
    //Transaction.Commit;
    ExecSQL :=
      'CREATE TABLE ' + Table5 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'NOT NULL, ' + '['+FieldImage+'] BLOB, ['+FieldDescription+'] VARCHAR(500), ['+
      FieldCategory+'] VARCHAR(50));';
    Connector.ExecuteDirect(ExecSQL);
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;
end;

function TDados.AddMineral(Nome: string):Boolean;
var
  SQLstr: string;
begin
  try
    Query.Clear;
    SQLstr:='SELECT '+FieldName+' FROM ' + Table1 + ' WHERE '+FieldName+'="' + Nome + '" ; ';
    Query.SQL.Text:=SQLstr;
    Query.Open;
  finally
  end;
  if Query.RecordCount > 0 then
  begin
    Result := False;
    Query.Close;
  end
  else
  begin
    if not Connector.Connected then
      Connector.Open;
    if not Transaction.Active then
      Transaction.StartTransaction;
    Query.Clear;
    if Query.Active then
      Query.Close;

    SQLstr := 'INSERT INTO ' + Dados.Table1 + ' ('+FieldName+') VALUES ("' + Nome + '") ; ';
    Query.SQL.Text:=SQLstr;
    Query.ExecSQL;

    SQLstr := 'INSERT INTO ' + Dados.Table2 +
      ' ('+FieldName+', '+FieldHardMin+', '+FieldHardMax+', '+FieldDensMin+',' + FieldDensMax+') VALUES ("' +
      Nome + '","1","10","0","30") ;';
    Query.SQL.Text:=SQLstr;
    Query.ExecSQL;

    SQLstr := 'INSERT INTO ' + Table3 + ' ('+FieldName+', ' +
       FieldBirrMax+') VALUES ("' + Nome + '", "0") ;';
    Query.SQL.Text:=SQLstr;
    Query.ExecSQL;

    SQLstr := 'INSERT INTO ' + Dados.Table4 + ' ('+FieldName+') VALUES ("' + Nome + '") ; ';
    Query.SQL.Text:=SQLstr;
    Query.ExecSQL;

    SQLstr := 'INSERT INTO ' + Dados.Table5 + ' ('+FieldName+') VALUES ("' + Nome + '") ; ';
    Query.SQL.Text:=SQLstr;
    Query.ExecSQL;
    try
      Transaction.Commit;
    finally
      Transaction.EndTransaction;
    end;
  end;
  Result:=True;
end;

procedure TDados.UpdateField(Table, Field, NewValue, Especie: string);
var SQLstr:String;
begin
  if DatabaseMineralFilename <> EmptyStr then
  begin
    try
    SQLstr:='UPDATE ' + Table +
        ' SET ' + Field + ' = "' + NewValue + '" WHERE '+FieldName+' = "' + Especie + '" ; ';
    Query.SQL.Text:=SQLstr;
    Transaction.StartTransaction;
      Query.ExecSQL;
      Transaction.Commit;
    finally
      Transaction.EndTransaction;
    end;
  end;
end;

procedure TDados.ClearBlobField(Table, Field, Especie: string);
var SQLstr: String;
begin
  SQLstr:='Update ' + Table + ' set ' +
        Field + ' = null ' + 'WHERE ' + FieldName + '="' + Especie + '" ;';
  try
    if Table = Dados.Table5 then
    begin
      Transaction.StartTransaction;
      Query.SQL.Text:= SQLstr;
      Query.ExecSQL;
      Query.ApplyUpdates;
    end;
  finally
    Transaction.EndTransaction;
  end;
end;

procedure TDados.ClearBlobIdField(Table, Field, Specie: String; Num: integer);
var
  SQLstr: string;
begin
  if Table = Dados.Table5 then
  begin
    SQLStr := 'SELECT '+FieldId+' FROM ' + Dados.Table5 + ' WHERE ' +
        FieldName + '="' + Specie + '" AND '+FieldId+' = "'+IntToStr(Num)+'";';
    Query.SQL.Text:=SQLstr;
    try
      Transaction.StartTransaction;
      Query.ExecSQL;
      Query.Open;
      SQLstr:='UPDATE ' + Table + ' SET ' +
      Field + ' = null ' + 'WHERE id="' + Query.FieldByName(FieldId).AsString + '" ;';
      Query.ExecSQL;
      Query.ApplyUpdates;
    finally
      Query.Close;
      Transaction.EndTransaction;
    end
  end;
end;

//Verifica se o Banco de dados é compatível
//TODO
function TDados.ValidateDatabase(Path: string): boolean;
begin
  if Path <> EmptyStr then
  begin
    if FileExists(Path) then
    begin
      Result:=True;
      {DatabaseMinerals := TSQLiteDatabase.Create(Path);
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
                Compatible := True;
              end;
            end;
          end;
        end;
      end;}
    end
    else
    begin
      //ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
      Result := False;
    end;
  end
  else
  begin
    //ShowMessage(Lang.NoDatabaseSelected);
    Result := False;
  end;
end;

procedure TDados.ExcluiMineral(Especie: string);
var SQLs:TStringList;
begin
  SQLs:=TStringList.Create;
  SQLs.Add('DELETE FROM ' + Table1 + ' WHERE ('+FieldName+'="' + Especie + '");');
  SQLs.Add('DELETE FROM ' + Table2 + ' WHERE ('+FieldName+'="' + Especie + '");');
  SQLs.Add('DELETE FROM ' + Table3 + ' WHERE ('+FieldName+'="' + Especie + '");');
  SQLs.Add('DELETE FROM ' + Table4 + ' WHERE ('+FieldName+'="' + Especie + '");');
  SQLs.Add('DELETE FROM ' + Table5 + ' WHERE ('+FieldName+'="' + Especie + '");');
  Query.SQL:=SQLs;
  try
    Transaction.StartTransaction;
    Query.ExecSQL;
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;
end;

procedure TDados.ExcludeAllMinerals;
var SQLs:TStringList;
begin
  SQLs:=TStringList.Create;
  SQLs.Add('DELETE FROM '+Dados.Table1+' ');
  SQLs.Add('DELETE FROM '+Dados.Table2+' ');
  SQLs.Add('DELETE FROM '+Dados.Table3+' ');
  SQLs.Add('DELETE FROM '+Dados.Table4+' ');
  SQLs.Add('DELETE FROM '+Dados.Table5+' ');
  Query.SQL:=SQLs;
  try
    Transaction.StartTransaction;
    Query.ExecSQL;
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;

end;

function TDados.GetImagesCount: integer;
var
  SQLStr: string;
  Count:Integer;
begin
  SQlstr := 'SELECT ' + FieldName + ' FROM ' + Dados.Table5 + ' ; ';
  Query.SQL.Text:=SQLStr;
  try
    Query.ExecSQL;
    Query.Open;
    Count:=Query.RecordCount;
  finally
    Query.Close;
  end;

  Result := Count;
end;

function TDados.MineralFiltered(strName, Table, FieldStr, Field: string): boolean;
var
  eliminar: boolean;
  I, K: integer;
  StrAux: string;
  SQLstr:String;
begin
  Eliminar := True;
  if (Trim(FieldStr) = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    SQLstr:='SELECT ' + Field +
      ' FROM ' + Table + ' WHERE ' + FieldName + ' = "' + strName + '" ;';
    Query.SQL.Text:=SQLstr;
    try
      //Transaction.StartTransaction;
      Query.ExecSQL;
      //Transaction.Commit;
      Query.Open;
    if Query.RecordCount > 0 then
      if Query.FindFirst then
        if Query.FieldByName(Field).AsString <> EmptyStr then
        begin
          K := (Length(FieldStr));
          for I := 0 to K do
          begin
            StrAux := Copy(Query.FieldByName(Field).AsString, I, K);
            if (UpCase(StrAux) = UpCase(FieldStr)) then
              Eliminar := False;
          end;
        end;
    finally
      Query.Close;
      //Transaction.EndTransaction;
    end;
  end;
  Result := Eliminar;
end;

function TDados.MineralBiggerThan(strName, Table, Value, Field: string): boolean;
var
  eliminar: boolean;
  SQLstr:String;
begin
  Eliminar := True;
  if (trim(Value) = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    SQLstr:='SELECT ' + FieldName +', '+Field+
      ' FROM ' + Table + ' WHERE ' + FieldName + ' = "' + strName + '" ;';
    Query.SQL.Text:=SQLstr;
    try
      Query.ExecSQL;
      Query.Open;
    if Query.RecordCount > 0 then
    begin
      if StrToInt(Query.FieldByName(Field).AsString) >= StrToInt(Value) then
        Eliminar := False;
    end;
    finally
      Query.Close;
    end;
  end;
  Result := Eliminar;
end;

function TDados.MineralImagesCount(Specie: String): integer;
var
  SQLStr: string;
  Count:Integer;
begin
  SQlstr := 'SELECT ' + FieldName + ' FROM ' + Dados.Table5 + ' WHERE ' +
    FieldName + '="' + Specie + '"; ';
  Query.SQL.Text:=SQLStr;
  try
    Query.ExecSQL;
    Query.Open;
    Count:=Query.RecordCount;
  finally
    Query.Close;
  end;
  Result:=Count;
end;

function TDados.MineralLessThan(strName, Table, Value, Field: string): boolean;
var
  eliminar: boolean;
  SQLstr:String;
begin
  Eliminar := True;
  if (trim(Value) = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    SQLstr:='SELECT ' + FieldName +', '+Field+
      ' FROM ' + Table + ' WHERE ' + FieldName + ' = "' + strName + '" ;';
    Query.SQL.Text:=SQLstr;
    try
      Query.ExecSQL;
      Query.Open;
      if Query.RecordCount > 0 then
      begin
        if StrToInt(Query.FieldByName(FIeld).AsString) <= StrToInt(Value) then
          Eliminar := False;
      end;
    finally
        Query.Close;
    end;
  end;
  Result := Eliminar;
end;

function TDados.ReturnDistinctField(Field, Table: String): TStrings;
var
  SQLstr: string;
  List: TStrings;
begin
  List := TStringList.Create;
  if (DatabaseMineralFilename <> EmptyStr) then
  begin
    SQLstr := 'SELECT DISTINCT ' + Field + ' FROM ' + Table + ' ;';
    Query.SQL.Text:=SQLstr;
    try
      Query.ExecSQL;
    //Transaction.Commit;
      Query.Open;
      if Query.RecordCount > 0 then
        if Query.FindFirst then
          while not Query.EOF do
          begin
            if Trim(Query.Fields[0].AsString) <> EmptyStr then
              List.Append(Query.Fields[0].AsString);
            Query.FindNext;
          end;
    finally
      Query.Close;
    end;
  end;
  Result := List;
end;

function TDados.ReturnAllMinerals(Order: TOrder): TStrings;
var
  SQLstr: string;
  List: TStrings;
begin
  List := TStringList.Create;
  case Order of
    ASCII:
    begin
      SQLstr := 'SELECT '+FieldName+' FROM ' + Table1 + ' ORDER BY '+FieldName+' ASC ; ';
    end;
    HArdness:
    begin
      SQLstr := 'SELECT '+FieldName+' FROM ' + Table1 + ' ORDER BY '+FieldHardMax+' ; ';
    end;
    Density:
    begin
      SQLstr := 'SELECT '+FieldName+' FROM ' + Table1 + ' ORDER BY '+FieldDensMax+' ; ';
    end;
    Birrefringence:
    begin
      SQLstr := 'SELECT '+FieldName+' FROM ' + Table3 + ' ORDER BY '+FieldBirrMax+' ; ';
    end;
  end;
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if Query.RecordCount > 0 then
      if Query.FindFirst then
        while (not Query.EOF) do
        begin
          List.Append(Query.Fields[0].AsString);
          Query.FindNext;
        end;
  finally
    Query.Close;
  end;
  Result := List;
end;

function TDados.ReturnSimpleFiltered(strName, ClassStr, SubclassStr,
  Group, Subgroup, Occurrence, Association, MinHard, MaxHard: string;
  MinDens, MaxDens: real; Order: TOrder): TStrings;
var
  Return, Exclude: TStrings;
  I: integer;
begin
  Return := TStringList.Create;
  Exclude := TStringList.Create;
  Return := ReturnAllMinerals(Order);
  for I := 0 to Return.Count - 1 do
  begin
    if MineralFiltered(Return[I], Table1, strName, FieldName) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralFiltered(Return[I], Table1, ClassStr, FieldClass) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralFiltered(Return[I], Table1, SubclassStr, FieldSubClass) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralFIltered(Return[I], Table1, Group, FieldGroup) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralFiltered(Return[I], Table1, Occurrence, FieldOccurrence) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralFiltered(Return[I], Table1, Association, FieldAssociation) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralBiggerThan(Return[I], Table2, MinHard, FieldHardMin) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralLessThan(Return[I], Table2, MaxHard, FieldHardMax) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralBiggerThan(Return[I], Table2, FloatToStr(MinDens),
      FieldDensMin) then
    begin
      Exclude.Add(Return[I]);
    end
    else
    if MineralLessThan(Return[I], Table2, FloatToStr(MaxDens),
      FieldDensMax) then
    begin
      Exclude.Add(Return[I]);
    end;
  end;
  for I := 0 to Exclude.Count - 1 do
  begin
    Return.Delete(Return.IndexOf(Exclude[I]));
  end;
  Result := Return;
end;

function TDados.SelectSQL(Table, Mineral: string): string;
var
  SQLstr: string;
begin
  if Trim(mineral) = EmptyStr then
  begin
    //esta parte foi mudada para funcao SQLSimpleFiltered
  end
  else
  begin
    if Trim(Table) = Table1 then
    begin
      SQLstr := 'SELECT '+FieldName+', '+FieldComposition+', '+FieldClass+', '+FieldSubClass+
        ', '+FieldGroup+', '+FieldSubGroup+', ' +
        FieldOccurrence+', '+FieldAssociation+', '+FieldDistinction+', '+FieldAlteration+', '+FieldUse+' ' +
        'FROM ' + Table1 + '  WHERE '+FieldName+'  = "' + Mineral + '" ;';
    end
    else
    if Trim(Table) = Table2 then
    begin
      SQLstr := 'SELECT '+FieldName+', '+FieldHardMin+', '+FieldHardMax+', '+FieldDensMin+', '+FieldDensMax+',' +
        FieldColor+', '+FieldStreak+', '+FieldBrightness+', '+FieldCleavage+', '+FieldFracture+', '+FieldMagnetism+', '+FieldLuminescense+' ' +
        'FROM ' + Table2 + '  WHERE '+FieldName+'  = "' + Mineral + '" ;';
    end
    else
    if Trim(Table) = Table3 then
    begin
      SQLstr := 'SELECT '+FieldName+', '+FieldBirrMax+', '+FieldRefractionIndex+', '+FieldBirrefringence+', ' +
        FieldOpticSign+', '+FieldOpticSignDescr+', '+FieldInterference+',' +
        FieldColorBlade+', '+FieldElongationSign+', '+FieldRelief+', '+Field2VAngle+', ' +
        FieldExtinction+' FROM ' + Table3 + '  WHERE '+FieldName+'  = "' + Mineral + '" ;';
    end
    else
    if Trim(Table) = Table4 then
    begin
      SQLstr := 'SELECT '+FieldName+', '+FieldCrystSystem+', '+FieldChrystClass+', '+FieldSymbology+', '+FieldHabit+' FROM ' +
        Table4 + '  WHERE '+FieldName+'  = "' + Mineral + '" ;';
    end;
  end;
  Result := SQLstr;
end;

function TDados.SelectClasses: TStrings;
var SQLstr:String;
  Strings:TStrings;
begin
  Strings:=TStringList.Create;
  SQLstr:='SELECT DISTINCT '+FieldClass+' FROM '+Dados.Table1+' ORDER BY '+FieldClass+' ASC';
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldClass).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldClass).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectImage(FieldStr: string; Index: integer): TJpegImage;
var
  SQlstr: string;
  pic: TJPEGImage;
  I: integer;
begin
  if Fieldstr = EmptyStr then
  begin
    SQlstr := 'SELECT ' + FieldImage + ' FROM ' + Dados.Table5 + ' ; ';
  end
  else
  begin
    SQLstr := 'SELECT ' + FieldImage + ' FROM ' + Dados.Table5 +
      ' WHERE ' + FieldName + ' = "' + FieldStr + '" ; ';
  end;
  Query.SQL.Text:=SQlstr;
  try
    Query.ExecSQL;
    Query.Open;
    if Query.RecordCount > 0 then
    begin
      if Query.FindFirst then
      begin
        for I := 0 to Index - 1 do
        begin
          Query.FindNext;
        end;
        try
          //#MS := Query.Fields[0];
          (Query.FieldByName(FieldImage) as TBlobField).SaveToStream(MS);
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
      else Result:=nil;
  end
  else Result:=nil;
  finally
    Query.Close;
  end;
end;

function TDados.SelectSubclasses: TStrings;
var SQLStr:String;
  Strings:TStrings;
begin
  Strings:=TStringlist.Create;
  SQLStr:='SELECT DISTINCT '+FieldSubclass+' FROM '+Dados.Table1+' ORDER BY '+FieldSubclass+' ASC';
  Query.SQL.Text:=SQLStr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldSubClass).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldSubClass).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectSubclasses(Classe: String): TStrings;
var SQLStr:String;
  Strings:TStrings;
begin
  Strings:=TStringlist.Create;
  SQLStr:='SELECT DISTINCT '+FieldSubclass+' FROM '+Dados.Table1+' WHERE( '+FieldClass+' = "' +
      Classe + '") ORDER BY '+FieldSubclass+' ASC';
  Query.SQL.Text:=SQLStr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldSubClass).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldSubClass).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectGroups: TStrings;
var SQLstr:String;
  Strings:TStrings;
begin
  Strings:=TStringList.Create;
  SQLstr:= 'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' ORDER BY '+FieldGroup+' ASC';
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldGroup).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldGroup).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectGroups(Classe: String): TStrings;
var SQLstr:String;
  Strings:TStrings;
begin
  Strings:=TStringList.Create;
  SQLstr:= 'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' WHERE ('+FieldClass+' = "' +
        Classe + '") ORDER BY '+FieldGroup+' ASC';
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldGroup).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldGroup).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectGroups_(SubClasse: String): TStrings;
var SQLstr:String;
  Strings:TStrings;
begin
  Strings:=TStringList.Create;
  SQLstr:= 'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' WHERE ('+FieldSubclass+' = "' +
        SubClasse + '")ORDER BY '+FieldGroup+' ASC';
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldGroup).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldGroup).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectGroups(Classe, SubClass: String): TStrings;
var SQLstr:String;
  Strings:TStrings;
begin
  Strings:=TStringList.Create;
  SQLstr:= 'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' WHERE( '+FieldClass+' = "' +
        Classe + '" AND '+FieldSubclass+' = "' + SubClass +
        '")ORDER BY '+FieldGroup+' ASC';
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldGroup).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldGroup).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;
end;

function TDados.SelectSubGroups(Classe, Subclass, Group: String): TStrings;
var SQLstr:String;
  Strings:TStrings;
begin
  Strings:=TStringList.Create;
  if Classe = EmptyStr then
  begin
    if (Subclass = EmptyStr) then
    begin
      if (Group = EmptyStr) then
      begin
        SQLStr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' ORDER BY '+FieldSubGroup+' ASC';
      end
      else
      begin
        SQLStr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldGroup+' = "' +
          Group + '") ORDER BY '+FieldSubGroup+' ASC';
      end;
    end
    else
    begin
      if (Group = EmptyStr) then
      begin
        SQLstr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldSubClass+' = "' +
          Subclass + '") ORDER BY '+FieldSubGroup+' ASC';
      end
      else
      begin
        SQLstr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldSubClass+' = "' +
          Subclass + '" and '+FieldGroup+' = "' + Group +
          '") ORDER BY '+FieldSubGroup+' ASC';
      end;
    end;
  end
  else
  begin
    if (Subclass = EmptyStr) then
    begin
      if (Group = EmptyStr) then
      begin
        SQLstr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+' = "' +
          Classe + '") ORDER BY '+FieldSubGroup+' ASC';
      end
      else
      begin
        SQLstr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+'= "' +
          Classe + '" and '+FieldGroup+'= "' + Group +
          '") ORDER BY '+FieldSubGroup+' ASC';
      end;
    end
    else
    begin
      if (Group = EmptyStr) then
      begin
        SQLstr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+' = "' +
          Classe + '" and '+FieldSubClass+' = "' + Subclass +
          '") ORDER BY '+FieldSubGroup+' ASC';
      end
      else
      begin
        SQLstr:=
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+' = "' +
          Classe + '" and '+FieldSubclass+' = "' + Subclass +
          '" and '+FieldGroup+' = "' + Group + '")ORDER BY '+FieldSubGroup+' ASC';
      end;
    end;
  end;
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    if (Query.RecordCount > 0) then
      if Query.FindFirst then
      begin
        while (not Query.EOF) do
        begin
          if Trim(Query.FieldByName(FieldSubGroup).AsString) <> EmptyStr then
            Strings.Add(Query.FieldByName(FieldSubGroup).AsString);
          Query.FindNext;
        end;
      end;
  finally
    Query.Close;
  end;
  Result:=Strings;

end;

function TDados.SetDatabase(Filename: String): Boolean;
begin
  if ValidateDatabase(Filename) then
  begin
    DatabaseMineralFileName:=Filename;
    Connector.DatabaseName:=Filename;
    Result:=True;
  end
  else
    Result:=False;
end;

procedure TDados.UpdateGeneralInfo(Nome, Composicao, Classe, Subclasse,
  Grupo, Subgrupo, Ocorrencia, Associacao, Distincao, Alteracao, Aplicacao: string);
var
  SQLstr: string;
begin
  SQLstr := 'UPDATE ' + Table1 + ' SET ' + FieldComposition+' = "' + Composicao +
    '", '+FieldClass+' = "' + Classe + '", ' + FieldSubClass+'= "' + Subclasse +
    '", '+FieldGroup+' = "' + Grupo + '", ' + FieldSubGroup+' = "' + SubGrupo +
    '", '+FieldOccurrence+' = "' + Ocorrencia + '", ' + FieldAssociation+' = "' +
    Associacao + '", '+FieldDistinction+' = "' + Distincao + '", ' + FieldAlteration+' = "' +
    Alteracao + '", '+FieldUse+' = "' + Aplicacao + '" ' + 'WHERE '+FieldName+' ="' + Nome + '" ;';
  Query.SQL.Text:=SQLstr;
  try
    Transaction.StartTransaction;
    Query.ExecSQL;
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;

end;

procedure TDados.UpdatePhysicalProp(DurezaMin, DurezaMax, DensidadeMin,
  DensidadeMax, Cor, Traco, Brilho, Clivagem, Fratura, Magnetismo,
  Luminescencia, Nome: string);
var
  SQLstr: string;
begin  //to do: formatar valores reais para apenas uma casa decimal
  SQLstr := 'UPDATE ' + Table2 + ' SET ' + FieldHardMin+' ="' + DurezaMin +
    '" , '+FieldHardMax+' = "' + DurezaMax + '" , ' + FieldDensMin+' = "' +
    DensidadeMin + '" , '+FieldDensMax+' = "' + DensidadeMax + '" , ' +
    FieldColor+' = "' + Cor + '" , '+FieldStreak+' = "' + Traco + '", ' + FieldBrightness+' = "' +
    Brilho + '" , '+FieldCleavage+' = "' + Clivagem + '" , '+FieldFracture+' = "' + Fratura +
    '" ,' + FieldMagnetism+' = "' + Magnetismo + '" , '+FieldLuminescense+' = "' +
    Luminescencia + '"  ' + ' WHERE '+FieldName+' = "' + Nome + '" ;';
  Query.SQL.Text:=SQLstr;
  try
    Transaction.StartTransaction;
    Query.ExecSQL;
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;
end;

procedure TDados.UpdateOpticalProp(BirrMax, SinalOptico,
  DescSinalOptico, DescRefracao, DescBirrefringencia, {CorInterferencia,}
  CorLamina, Elongacao, Relevo, Angulo2V, Extincao, Nome: string);
var
  SQLstr: string;
begin  //to do: formatar valores reais para 3 casas decimais (FloatToStr(valor, "%.3f"))
  SQLstr := 'UPDATE ' + Table3 + ' SET ' +
    FieldBirrMax+'= "' + BirrMax + '", ' + FieldRefractionIndex+' = "' +
    DescRefracao + '", '+FieldOpticSign+' = "' + SinalOptico + '", ' +
    FieldOpticSignDescr+' = "' + DescSinalOptico + '" , '+FieldBirrefringence+' = "' +
    DescBirrefringencia + '", ' +
    {'cor_interferencia = "'+CorInterferencia+'",} FieldColorBlade+' = "' +
    CorLamina + '" , ' + FieldElongationSign+' = "' + Elongacao +
    '" , '+FieldRelief+' = "' + Relevo + '", ' + Field2VAngle+' = "' + Angulo2V +
    '", '+FieldExtinction+'  = "' + Extincao +'" '+
    ' WHERE '+FieldName+' = "' + Nome + '" ; ';
  Query.SQL.Text:=SQLstr;
  try
    Transaction.StartTransaction;
    Query.ExecSQL;
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;
end;

procedure TDados.UpdateCrystallography(Sistema, Classe, Simbologia,
  Habito, Nome: string);
var
  SQLstr: string;
begin
  SQLstr := 'UPDATE ' + Table4 + ' SET ' + FieldCrystSystem+' = "' + Sistema +
    '" , '+FieldChrystClass+' = "' + Classe + '" , ' + FieldSymbology+' = "' +
    Simbologia + '" , '+FieldHabit+' = "' + Habito + '" ' + 'WHERE '+FieldName+' = "' + Nome + '"  ; ';
  Query.SQL.Text:=SQLstr;
  try
    Transaction.StartTransaction;
    Query.ExecSQL;
    Transaction.Commit;
  finally
    Transaction.EndTransaction;
  end;
end;

function TDados.FindImageId: Integer;
var SQLstr:String; I:Integer; Found:Boolean;
begin
   I:=0;
   Found:=False;
   while not Found do
   begin
     Inc(I);
     SQLstr:='SELECT id FROM '+Table5+' WHERE id="'+IntToStr(I)+'";';
     Query.SQL.Text:=SQLstr;
     Query.ExecSQL;
     Transaction.Commit;
     Query.Open;
     if Query.RecordCount <= 0 then
     begin
       Query.Close;
       Found:=True;
     end;
     Query.Close;
   end;
   Result:=I;
end;

function TDados.GetCount(NameStr: String): Integer;
var
  SQLstr: string;
  Count:Integer;
begin
  SQLstr:= 'SELECT '+FieldName+' FROM '+Table1+' WHERE '+FieldName+'="'+NameStr+'" ;';
  Query.SQL.Text:=SQLstr;
  try
    Query.ExecSQL;
    Query.Open;
    Count:=Query.RecordCount;
  finally
    Query.Close;
  end;
  result:=Count;
end;

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  Connector.Free;
  Transaction.Free;
  Query.Free;
end;

procedure TDados.AddBlobField(ImageFilename, MineralName, Category,
  Description: string);
var
  ID: string;
  SQLstr:String;
  BlobStream: TMemoryStream;
begin
  ID := IntToStr(Dados.FindImageId);
  try
    SQLstr:='SELECT * FROM '+Dados.Table5; //ver se precisa
    Query.SQL.Text:=SQLstr;          //
    Query.ExecSQL;                   //
    Query.Open;                      //
    Query.Edit;                      //
    SQLstr:='INSERT INTO ' + Dados.Table5 +
      ' (id,' + FieldName + ', ' + FieldCategory + ', ' + FieldDescription +
      ') VALUES ("' + ID + '", "' + MineralName + '","' + Category +
      '","' + Description + '") ;';
    Query.SQL.Text:=SQLstr;
    Query.ExecSQL;
    Query.ApplyUpdates;

    SQLstr:='SELECT '+FieldImage+' FROM '+Dados.Table5+' WHERE '+FIeldId+
        ' = "'+ID+'"';
    Query.ExecSQL;

    BlobStream:=TMemoryStream.Create;
    BlobStream.LoadFromFile(ImageFilename);
    BlobStream.Position:=0;

    (Query.FieldByName(FieldImage) as TBlobField).LoadFromStream(BlobStream);
    Query.ApplyUpdates;
  finally
    Query.Close;
    BlobStream.Free;
  end;
end;

end.
