﻿{
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
  SQLite3tablemod, unitconfigfile, Dialogs, unitlanguage;

type

  TOrder = (ASCII, Hardness, Density, Birrefringence);

  { TDados }

  TDados = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    Table1: string;
    Table2: string;
    Table3: string;
    Table4: string;
    Table5: string;

    DatabaseMinerals: TSQLiteDatabase;
    TableGeneral: TSQLiteTable;
    TablePhysical: TSQLiteTable;
    TableOptics: TSQLiteTable;
    TableChryst: TSQLiteTable;
    TableImages: TSQLiteTable;

    DatabaseMineralFileName: string;

    Caminho: string;
    function AddMineral(Nome: string): integer;
    procedure UpdateField(Table, Field, NewValue, Especie: string);
    procedure CreateDatabase(Diretorio: string);
    procedure ExcluiMineral(Especie: string);

    function MineralFiltered(strName, Table, FieldStr, Field: string): boolean;
    function MineralBiggerThan(strName, Table, Value, Field: string): boolean;
    function MineralLessThan(strName, Table, Value, Field: string): boolean;
    function ReturnDistinctField(Field, Table: string): TStrings;
    function ReturnAllMinerals(Order: TOrder): TStrings;
    function ReturnSimpleFiltered(strName, ClassStr, SubclassStr,
      Group, Subgroup, Occurrence, Association, MinHard, MaxHard: string;
      MinDens, MaxDens: real; Order: TOrder): TStrings;
    function SelectSQL(Table, Mineral: string): string;
    procedure UpdateGeneralInfo(Nome, Composicao, Classe, Subclasse,
      Grupo, Subgrupo, Ocorrencia, Associacao, Distincao, Alteracao, Aplicacao: string);
    procedure UpdatePhysicalProp(DurezaMin, DurezaMax, DensidadeMin,
      DensidadeMax, Cor, Traco, Brilho, Clivagem, Fratura, Magnetismo,
      Luminescencia, Nome: string);
    procedure UpdateOpticalProp(BirrMax, SinalOptico,
      DescSinalOptico, DescRefracao, DescBirrefringencia, {CorInterferencia,}
      CorLamina, Elongacao, Relevo, Angulo2V, Extincao, Nome: string);
    procedure UpdateCrystallography(Sistema, Classe, Simbologia, Habito, Nome: string);
    function ValidateDatabase(Path: string): boolean;
    { public declarations }
  end;

const

  General: string = 'general';
  Physical: string = 'physical';
  Optics: string = 'optical';
  Chryst: string = 'chrystaline';
  Images: string = 'images';
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
//retirar dois campos abaixo
  Field2VMin: string = 'angulo_min';
  Field2VMax: string = 'angulo_max';
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
  Caminho := GetCurrentDir + Sep;
  DatabaseMineralFilename := ConfigGetDatabase;
end;

procedure TDados.CreateDatabase(Diretorio: string);
var
  ExecSQL: string;
begin
  try
    DatabaseMinerals := TSQLiteDatabase.Create(Diretorio);
    ExecSQL :=
      'CREATE TABLE ' + Table1 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'UNIQUE  NOT NULL, ['+FieldComposition+'] TEXT, ['+FieldClass+'] TEXT, ['+FieldSubClass+'] TEXT, ' +
      '['+FieldGroup+'] TEXT, ['+FieldSubGroup+'] TEXT, ['+FieldOccurrence+'] TEXT, ['+FieldAssociation+'] TEXT,' +
      '['+FieldDistinction+'] TEXT, ['+FieldUse+'] TEXT,['+FieldAlteration+'] TEXT);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE ' + Table2 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'UNIQUE  NOT NULL, ' + '['+FieldHardMin+'] FLOAT DEFAULT 0, ['+FieldHardMax+'] FLOAT DEFAULT 10, ' +
      '['+FieldDensMin+'] FLOAT, ['+FieldDensMax+'] FLOAT, ['+FieldColor+'] TEXT,' +
      '['+FieldBrightness+'] TEXT, ['+FieldStreak+'] TEXT, ['+FieldFracture+'] TEXT, ['+FieldCleavage+'] TEXT, ' +
      '['+FieldLuminescense+'] TEXT, ['+FieldMagnetism+'] TEXT);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL := 'CREATE TABLE ' + Table3 + ' ([id] INTEGER PRIMARY KEY NOT NULL, ' +
      '['+FieldName+'] TEXT UNIQUE NOT NULL,' +
      '['+FieldOpticSign+'] TEXT, ['+FieldOpticSignDescr+'] TEXT, ' +
      '['+FieldBirrMax+'] FLOAT DEFAULT 0, ' +
      '['+FieldRefractionIndex+'] TEXT, ['+FieldBirrefringence+'] TEXT, ['+FieldInterference+'] TEXT, ' +
      '['+FieldColorBlade+'] TEXT, ['+FieldElongationSign+'] TEXT, ['+FieldRelief+'] TEXT, ' +
      '['+Field2VAngle+'] TEXT,  ' +
      '['+FieldExtinction+'] TEXT) ; ';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE ' + Table4 + ' ([id] INTEGER PRIMARY KEY NOT NULL,['+FieldName+'] TEXT ' +
      'UNIQUE  NOT NULL, ' + '['+FieldChrystClass+'] TEXT, ['+FieldCrystSystem+'] TEXT, ['+FieldSymbology+'] TEXT,' +
      '['+FieldHabit+'] TEXT);';
    DatabaseMinerals.ExecSQL(ExecSQL);
    ExecSQL :=
      'CREATE TABLE ' + Table5 + ' ([id] INTEGER PRIMARY KEY NOT NULL,[nome] TEXT ' +
      'UNIQUE  NOT NULL, ' + '[imagem1] BLOB, [description] VARCHAR(500), [image_type] VARCHAR(50));';
    DatabaseMinerals.ExecSQL(ExecSQL);
  finally

  end;
end;

function TDados.AddMineral(Nome: string): integer;
var
  SQLstr: string;
begin
  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
    'SELECT '+FieldName+' FROM ' + Table1 + ' WHERE '+FieldName+'="' + Nome + '" ; ');
  if Dados.TableGeneral.Count > 0 then
  begin
    Result := 1;
  end
  else
  begin
    SQLstr := 'INSERT INTO ' + Dados.Table1 + ' ('+FieldName+') VALUES ("' + Nome + '") ; ';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr := 'INSERT INTO ' + Dados.Table2 +
      ' ('+FieldName+', '+FieldHardMin+', '+FieldHardMax+', '+FieldDensMin+',' + FieldDensMax+') VALUES ("' +
      Nome + '","1","10","0","30") ;';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr := 'INSERT INTO ' + Table3 + ' ('+FieldName+', ' +
      FieldBirrMax+') VALUES ("' + Nome + '", "0") ;';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr := 'INSERT INTO ' + Dados.Table4 + ' ('+FieldName+') VALUES ("' + Nome + '") ; ';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    SQLstr := 'INSERT INTO ' + Dados.Table5 + ' ('+FieldName+') VALUES ("' + Nome + '") ; ';
    Dados.DatabaseMinerals.ExecSQL(SQLstr);
    Result := 0;
  end;
end;

procedure TDados.UpdateField(Table, Field, NewValue, Especie: string);
begin
  if DatabaseMineralFilename <> EmptyStr then
  begin
    if FileExists(DatabaseMineralFilename) then
    begin
      TableGeneral := DatabaseMinerals.GetTable('UPDATE ' + Table +
        ' SET ' + Field + ' = "' + NewValue + '" WHERE '+FieldName+' = "' + Especie + '" ; ');
    end;
  end;
end;

//Verifica se o Banco de dados é compatível
function TDados.ValidateDatabase(Path: string): boolean;
var
  Compatible: boolean;
begin
  Compatible := False;
  if Path <> EmptyStr then
  begin
    if FileExists(Path) then
    begin
      DatabaseMinerals := TSQLiteDatabase.Create(Path);
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
      end;
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
  Result := Compatible;
end;

procedure TDados.ExcluiMineral(Especie: string);
begin
  DatabaseMinerals.ExecSQL('DELETE FROM ' + Table1 + ' WHERE ('+FieldName+'="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM ' + Table2 + ' WHERE ('+FieldName+'="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM ' + Table3 + ' WHERE ('+FieldName+'="' + Especie + '");');
  DatabaseMinerals.ExecSQL('DELETE FROM ' + Table4 + ' WHERE ('+FieldName+'="' + Especie + '");');
  //DatabaseMinerals.ExecSQL('DELETE FROM ' + Table5 + ' WHERE ('+FieldName+'="' + Especie + '");');
end;

function TDados.MineralFiltered(strName, Table, FieldStr, Field: string): boolean;
var
  eliminar: boolean;
  I, K: integer;
  StrAux: string;
begin
  Eliminar := True;
  if (Trim(FieldStr) = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    TableGeneral := DatabaseMinerals.GetTable('SELECT ' + Field +
      ' FROM ' + Table + ' WHERE ' + FieldName + ' = "' + strName + '" ;');
    if TableGeneral.Count > 0 then
      if TableGeneral.MoveFirst then
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

function TDados.MineralBiggerThan(strName, Table, Value, Field: string): boolean;
var
  eliminar: boolean;
begin
  Eliminar := True;
  if (trim(Value) = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    TableGeneral := DatabaseMinerals.GetTable('SELECT ' + FieldName +', '+Field+
      ' FROM ' + Table + ' WHERE ' + FieldName + ' = "' + strName + '" ;');
    if TableGeneral.Count > 0 then
    begin
      if StrToInt(TableGeneral.FieldByName[Field]) >= StrToInt(Value) then
        Eliminar := False;
    end;
  end;
  Result := Eliminar;
end;

function TDados.MineralLessThan(strName, Table, Value, Field: string): boolean;
var
  eliminar: boolean;
begin
  Eliminar := True;
  if (trim(Value) = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    TableGeneral := DatabaseMinerals.GetTable('SELECT ' + FieldName +', '+Field+
      ' FROM ' + Table + ' WHERE ' + FieldName + ' = "' + strName + '" ;');
    if TableGeneral.Count > 0 then
    begin
      if StrToInt(TableGeneral.FieldByName[Field]) <= StrToInt(Value) then
        Eliminar := False;
    end;
  end;
  Result := Eliminar;
end;

function TDados.ReturnDistinctField(Field, Table: string): TStrings;
var
  SQLstr: string;
  List: TStrings;
begin
  List := TStringList.Create;
  if ValidateDatabase(DatabaseMineralFilename) then
  begin
    SQLstr := 'SELECT DISTINCT ' + Field + ' FROM ' + Table + ' ;';
    TableGeneral := DatabaseMinerals.GetTable(SQLStr);
    if TableGeneral.Count > 0 then
      if TableGeneral.MoveFirst then
        while not TableGeneral.EOF do
        begin
          if Trim(TableGeneral.FIelds[0]) <> EmptyStr then
            List.Append(TableGeneral.Fields[0]);
          TableGeneral.Next;
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
  TableGeneral := DatabaseMinerals.GetTable(SQLstr);
  if TableGeneral.Count > 0 then
    if TableGeneral.MoveFirst then
      while (not TableGeneral.EOF) do
      begin
        List.Append(TableGeneral.Fields[0]);
        TableGeneral.Next;
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
  DatabaseMinerals.ExecSQL(SQLstr);
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
  DatabaseMinerals.ExecSQL(SQLstr);
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
    '", '+FieldExtinction+'  = "' + Extincao +' '+
    ' WHERE '+FieldName+' = "' + Nome + '" ; ';
  DatabaseMinerals.ExecSQL(SQlStr);
end;

procedure TDados.UpdateCrystallography(Sistema, Classe, Simbologia,
  Habito, Nome: string);
var
  SQLstr: string;
begin
  SQLstr := 'UPDATE ' + Table4 + ' SET ' + FieldCrystSystem+' = "' + Sistema +
    '" , '+FieldChrystClass+' = "' + Classe + '" , ' + FieldSymbology+' = "' +
    Simbologia + '" , '+FieldHabit+' = "' + Habito + '" ' + 'WHERE '+FieldName+' = "' + Nome + '"  ; ';
  DatabaseMInerals.ExecSQL(SQlstr);
end;

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  DatabaseMinerals.Free;
end;

end.