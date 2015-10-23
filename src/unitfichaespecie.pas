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
unit unitfichaespecie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, BCPanel, BCLabel,
  Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, DBCtrls, Buttons, Menus, ExtDlgs, ActnList, Spin,
  SQLite3tablemod, uFormImpressao, unitremovemineral, unitlanguage,
  IniFiles, uBibliografia, unitajuda, frameficha, unitframelist,
  unitframesimplefilter, unitframeimages;

type

  { TFormFichaEspecie }

  TFormFichaEspecie = class(TForm)
    ActionSpinRMax: TAction;
    ActionSpinRMin: TAction;
    ActionSpinBMax: TAction;
    ActionSpinBMin: TAction;
    ActionMenuHelp: TAction;
    ActionMenuConf: TAction;
    ActionOpenDatabaseForm: TAction;
    ActionFormPrint: TAction;
    ActionImagesVisible: TAction;
    ActionFilterVisible: TAction;
    ActionAdd: TAction;
    ActionRemoveMineral: TAction;
    ActionRefreshList: TAction;
    ActionList1: TActionList;
    ImageList1: TImageList;
    MenuItemRemoveMineral: TMenuItem;
    MenuItemConfiguracao: TMenuItem;
    MenuItemAddMineral: TMenuItem;
    MenuItemAjuda: TMenuItem;
    Mineralogy_Name: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItemBibliografia: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItemClose: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItemPrint: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ProgressBar1: TProgressBar;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButtonBibliografia: TToolButton;
    ToolButton6: TToolButton;
    ToolButtonAdd: TToolButton;
    ToolButtonDatabase: TToolButton;
    ToolButtonHelp: TToolButton;
    ToolButtonShowFilter: TToolButton;
    ToolButtonShowImages: TToolButton;
    ToolButtonRemove: TToolButton;
    ToolButton5: TToolButton;
    ToolButtonRefresh: TToolButton;
    ToolButton7: TToolButton;
    ToolButtonPrint: TToolButton;
    procedure ActionAddExecute(Sender: TObject);
    procedure ActionFilterVisibleExecute(Sender: TObject);
    procedure ActionFormPrintExecute(Sender: TObject);
    procedure ActionImagesVisibleExecute(Sender: TObject);
    procedure ActionMenuConfExecute(Sender: TObject);
    procedure ActionMenuHelpExecute(Sender: TObject);
    procedure ActionOpenDatabaseFormExecute(Sender: TObject);
    //procedure ActionRefreshListExecute(Sender: TObject);
    procedure ActionRemoveMineralExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    //procedure ListBoxMineraisClick(Sender: TObject);
    //procedure MenuItemRemImage1Click(Sender: TObject);
    //procedure MenuItemRemImage2Click(Sender: TObject);
    procedure MenuItemBibliografiaClick(Sender: TObject);
    procedure MenuItemCloseClick(Sender: TObject);
    procedure ToolButtonBibliografiaClick(Sender: TObject);
    procedure ToolButtonLanguageClick(Sender: TObject);
    //procedure ToolButtonRemoveImageClick(Sender: TObject);
  private
    //procedure AddMineralImage(Tipo:String;Num: char);
    procedure ConfigDatabase(config:TIniFile);
    //procedure RemoveImage(ImagemSelecionada:Char);
    { private declarations }
  public
    FormFrameFicha: TFrameFicha;
    FrameList : TFrameList;
    FrameSimpleFilter: TFrameSimpleFilter;
    FrameImages: TFrameImages;
    procedure ChangeLanguage;
    {procedure RefreshImages;}
    //function UpdateList: Integer;
    { public declarations }
  end;

var
  FormFichaEspecie: TFormFichaEspecie;
  DatabaseMinerals: TSQLiteDatabase;
  TableMinerals: TSQLiteTable;

  //NomeMineral: string;
  //SelectedImage: char;

  Config:TIniFile;

implementation

uses udatamodule, unitblobfields, unitaddmineral, unitselectdatabase,
  unitformlanguage, unitformconfigurations;

{$R *.lfm}

{ TFormFichaEspecie }

procedure TFormFichaEspecie.FormCreate(Sender: TObject);
begin
  SelectedImage := '1';
  openpicturedialog1.Filter := lista_formatos;
  Config:=TIniFile.Create(Dados.Caminho+'config.ini');
  ConfigDatabase(Config);
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'English')) then
  begin
    ChangeLanguage;
  end;
  Config.Free;
  Mineralogy_Name.Caption:=MineralogyName;

  FrameList:= TFrameList.Create(FormFIchaEspecie);
  with Framelist do
  begin
    Parent:= FormFichaEspecie;
    Align:=alLeft;
  end;

  FrameSimpleFilter:= TFrameSimpleFilter.Create(Panel2);
  with FrameSimpleFilter do Parent := Panel2;

  FrameImages:= TFrameImages.Create(Panel3);
  with FrameImages do Parent := Panel3;

  FormFrameFicha:= TFrameFicha.Create(Panel4);
  with FormFrameFicha do
  begin
    Parent := Panel4;
    FormMode:=Edit;
  end;
end;

procedure TFormFichaEspecie.FormDestroy(Sender: TObject);
begin
  FormFrameFicha.Free;
  FrameSimpleFilter.Free;
  FrameImages.Free;
  FormFrameFicha.Free;
end;

procedure TFormFichaEspecie.FormShow(Sender: TObject);
begin
  if Trim(Dados.DatabaseMineralFileName) <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
    begin
      Dados.DatabaseMinerals := TSQLiteDatabase.Create(Dados.DatabaseMineralFileName);
      FrameList.RefreshList;
      FrameSimpleFilter.AddClasses;
      FrameSimpleFilter.AddSubclasses;
      FrameSimpleFilter.AddGroups;
      FrameSimpleFilter.AddSubgroups;
      FormFrameFicha.EditingMode(True);
      //FormFrameFicha.RefreshImages;
      //RefreshImages;
    end
    else
    begin
      FormFrameFicha.EditingMode(False);
      Dados.DatabaseMineralFileName := EmptyStr;
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end;
  end
  else
  begin
    FormFrameFicha.EditingMode(False);
    ShowMessage(Lang.NoDatabaseSelected);
  end;
end;

procedure TFormFichaEspecie.MenuItemBibliografiaClick(Sender: TObject);
begin
  FormBibliografia.Show;
end;

procedure TFormFichaEspecie.MenuItemCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormFichaEspecie.ToolButtonBibliografiaClick(Sender: TObject);
begin
  FormBibliografia.Show;
end;

procedure TFormFichaEspecie.ToolButtonLanguageClick(Sender: TObject);
begin
  FormLanguage.Show;
end;

procedure TFormFichaEspecie.ChangeLanguage;
begin
  //self.Caption:=Lang.Minerals;
    ToolButtonDatabase.Hint:=Lang.Database;
    ToolButtonHelp.Hint:=Lang.Help;
    ToolButtonAdd.Hint:=Lang.Add;
    ToolButtonRemove.Hint:=Lang.Remove;
    ToolButtonPrint.Hint:=Lang.Print;
    ToolButtonShowFilter.Hint:=Lang.ShowFilter;
    ToolButtonShowImages.Hint:=Lang.ShowImages;

    MenuItem1.Caption:=Lang.StrFile;
    MenuItem2.Caption:=Lang.Edit;
    MenuItem3.Caption:=Lang.Exhibit;
    MenuItemClose.Caption:=Lang.Close;
    MenuItem5.Caption:=Lang.ShowFilter;
    MenuItem6.Caption:=Lang.ShowImages;
    MenuItemConfiguracao.Caption:=Lang.Configuration;
    MenuItemPrint.Caption:=Lang.Print;
    MenuItemBibliografia.Caption:=Lang.Bibliography;

    {BCLabelOrder.Caption:=Lang.Order;
    RadioButton1.Caption:=Lang.Alphabetical;
    RadioButton2.Caption:=Lang.Hardness;
    RadioButton3.Caption:=Lang.Density;
    BCLabelMinerals.Caption:=Lang.Minerals;
    //colocar strings da contagem de registros

    BCLabelName.Caption:=Lang.Name;
    BCLabelClass.Caption:=Lang.MineralClass;
    BCLabelSubClass.Caption:=Lang.Subclass;
    BCLabelGroup.Caption:=Lang.Group;
    BCLabelSubgroup.Caption:=Lang.Subgroup;
    BCLabelHardness.Caption:=Lang.Hardness;
    BCLabelDensity.Caption:=Lang.Density;
    BCLabelOcorrencia.Caption:=Lang.Occurrence;
    BCLabelAssociacao.Caption:=Lang.Association;
    BCLabelCor.Caption:=Lang.Color;
    Label33.Caption:=Lang.Minimum;
    Label34.Caption:=Lang.Maximum;
    Label35.Caption:=Lang.Minimum;
    Label36.Caption:=Lang.Maximum;}
end;

procedure TFormFichaEspecie.ConfigDatabase(config:TIniFile);
var Aux: String;
begin
  Aux:=Trim(Config.ReadString('Database','Mineral',EmptyStr));
  if Aux <> EmptyStr then
  begin
    if FileExists(Aux) then
    begin
      if Dados.ChooseDatabase('mineral', Aux) then
      begin
        Dados.DatabaseMineralFileName:=Aux;
      end
      else
      begin
        Dados.DatabaseMineralFileName:=EmptyStr;
        Config.WriteString('Database', 'Mineral', EmptyStr);
      end;
    end
    else
    begin
      Config.WriteString('Database', 'Mineral', EmptyStr);
      Dados.DatabaseMineralFileName:=EmptyStr;
    end;
  end
  else
  begin
    Config.WriteString('Database', 'Mineral', EmptyStr);
    Dados.DatabaseMineralFileName:=EmptyStr;
  end;
  //Config.Free;
end;

procedure TFormFichaEspecie.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormFichaEspecie.ActionAddExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
        FormAddMineral.Show
      else
        ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else
    ShowMessage(Lang.NoDatabaseSelected);
end;

procedure TFormFichaEspecie.ActionFilterVisibleExecute(Sender: TObject);
begin
  if Panel2.Visible then
    Panel2.Visible := False
  else
    Panel2.Visible := True;
end;

procedure TFormFichaEspecie.ActionFormPrintExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
      begin
        FormImpressao.Show;
      end
      else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);
end;

procedure TFormFichaEspecie.ActionImagesVisibleExecute(Sender: TObject);
begin
  if Panel3.Visible then
  begin
    Panel3.Visible:=False;
  end
  else
  begin
    Panel3.Visible:=True;
  end;
end;

procedure TFormFichaEspecie.ActionMenuConfExecute(Sender: TObject);
begin
  FormConfigurations.Show;
end;

procedure TFormFichaEspecie.ActionMenuHelpExecute(Sender: TObject);
begin
  FormAjuda.Show;
end;

procedure TFormFichaEspecie.ActionOpenDatabaseFormExecute(Sender: TObject);
begin
  FormSelectDatabase.Show;
end;

procedure TFormFichaEspecie.ActionRemoveMineralExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
        FormRemoveMineral.Show
      else
        ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else
  ShowMessage(Lang.NoDatabaseSelected);
end;


end.
