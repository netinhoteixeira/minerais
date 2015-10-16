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
  IniFiles, uBibliografia, unitajuda, frameficha;

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
    ActionAddImage7: TAction;
    ActionAddImage6: TAction;
    ActionAddImage5: TAction;
    ActionAddImage4: TAction;
    ActionAddImage3: TAction;
    ActionAddImage2: TAction;
    ActionAddImage1: TAction;
    ActionList1: TActionList;
    BCLabelName: TBCLabel;
    BCLabelOrder: TBCLabel;
    BCLabelMinerals: TBCLabel;
    BCLabelRegistros: TBCLabel;
    BCLabelAssociacao: TBCLabel;
    BCLabelBrilho: TBCLabel;
    BCLabelClass: TBCLabel;
    BCLabelCor: TBCLabel;
    BCLabelDensity: TBCLabel;
    BCLabelHardness: TBCLabel;
    BCLabelGroup: TBCLabel;
    BCLabelOcorrencia: TBCLabel;
    BCLabelSubclass: TBCLabel;
    BCLabelSubgroup: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ComboBoxClasse: TComboBox;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    EditFiltroAssociacao: TEdit;
    EditFiltroBrilho: TEdit;
    EditFiltroCor: TEdit;
    EditFiltroDens_Max: TEdit;
    EditFiltroDens_min: TEdit;
    EditFiltroOcorrencia: TEdit;
    EditNome: TEdit;
    ImageList1: TImageList;
    MenuItemRemoveMineral: TMenuItem;
    MenuItemConfiguracao: TMenuItem;
    MenuItemAddMineral: TMenuItem;
    MenuItemAjuda: TMenuItem;
    Mineralogy_Name: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ListBoxMinerais: TListBox;
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
    ProgressBar1: TProgressBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioGroupOrdem: TRadioGroup;
    ScrollBox8: TScrollBox;
    ScrollBoxFiltro: TScrollBox;
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
    procedure ActionRefreshListExecute(Sender: TObject);
    procedure ActionRemoveMineralExecute(Sender: TObject);
    procedure ComboBoxClasseChange(Sender: TObject);
    procedure ComboBoxGrupoChange(Sender: TObject);
    procedure ComboBoxSubclasseChange(Sender: TObject);
    procedure ComboBoxSubgrupoChange(Sender: TObject);
    procedure EditFiltroAssociacaoEditingDone(Sender: TObject);
    procedure EditFiltroBrilhoEditingDone(Sender: TObject);
    procedure EditFiltroCorEditingDone(Sender: TObject);
    procedure EditFiltroDens_MaxEditingDone(Sender: TObject);
    procedure EditFiltroDens_minEditingDone(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    //procedure ListBoxMineraisClick(Sender: TObject);
    procedure MenuItemRemImage1Click(Sender: TObject);
    procedure MenuItemRemImage2Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItemBibliografiaClick(Sender: TObject);
    procedure MenuItemCloseClick(Sender: TObject);
    procedure ToolButtonBibliografiaClick(Sender: TObject);
    procedure ToolButtonLanguageClick(Sender: TObject);
    procedure ToolButtonRemoveImageClick(Sender: TObject);
  private
    function DefinirOrdem: string;
    function Filtro_Nome: boolean;
    function Filtro_Ocorrencia: boolean;
    function Filtro_Associacao: boolean;
    function Filtro_Cor: boolean;
    function Filtro_Brilho: boolean;
    function MineralogyName: string;
    //procedure AddMineralImage(Tipo:String;Num: char);
    procedure ConfigDatabase(config:TIniFile);
    procedure Image1OnClick(Sender: TObject);
    procedure Image2OnClick(Sender: TObject);
    procedure Image3OnClick(Sender: TObject);
    procedure Image4OnClick(Sender: TObject);
    procedure Image5OnClick(Sender: TObject);
    procedure Image6OnClick(Sender: TObject);
    procedure Image7OnClick(Sender: TObject);
    procedure RefreshImages;
    //procedure RemoveImage(ImagemSelecionada:Char);
    { private declarations }
  public
    procedure ChangeLanguage;
    procedure AddClasses;
    procedure AddGroups;
    procedure AddSubclasses;
    procedure AddSubgroups;
    {procedure RefreshImages;
    }function AtualizarLista: boolean;
    function UpdateList: Integer;
    { public declarations }
  end;

  PropertyImages = record
    ToCreate: boolean;
    Created: boolean;
  end;

const
  Lista_Formatos: string = 'All Files| *.jpg; *.jpeg;';
  ImagesLeft: integer = 6;
  Image1Top: integer = 8;
  SeparadorImagens: integer = 140;
  ImagesWidth: integer = 140;
  ImagesHeight: integer = 120;

var
  DatabaseMinerals: TSQLiteDatabase;
  TableMinerals: TSQLiteTable;

  NomeMineral: string;

  FormFichaEspecie: TFormFichaEspecie;
  SelectedImage: char;

  UltimaPesquisa: string;
  den_min, den_max, Ocorrencia, //variaveis usadas nos procedimentos de filtro
  Associacao, Cor, Brilho: string;

  Config:TIniFile;

  Image1, Image2, Image3, Image4, Image5, Image6, Image7: TImage;
  Image: array[1..7] of PropertyImages;

  FormFrameFicha:TFrameFicha;

implementation

uses udatamodule, unitBlobFields, unitaddmineral, unitselectdatabase,
  unitformlanguage, unitformconfigurations;

{$R *.lfm}

{ TFormFichaEspecie }

procedure TFormFichaEspecie.FormCreate(Sender: TObject);
begin
  SelectedImage := '1';
  openpicturedialog1.Filter := lista_formatos;
  //to do: se Linux entao:
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  ConfigDatabase(Config);
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'English')) then
  begin
    ChangeLanguage;
  end;
  Config.Free;
  Mineralogy_Name.Caption:=MineralogyName;

  FormFrameFicha:= TFrameFicha.Create(FormFichaEspecie);
  with FormFrameFicha do Parent := FormFichaEspecie;
end;

procedure TFormFichaEspecie.FormDestroy(Sender: TObject);
begin
  FormFrameFicha.Free;
end;

procedure TFormFichaEspecie.FormShow(Sender: TObject);
var
  SelectSQL: string;
begin
  FormFrameFicha.SelectedImage:='1';
  if Trim(Dados.DatabaseMineralFileName) <> EmptyStr then
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      Dados.DatabaseMinerals := TSQLiteDatabase.Create(Dados.DatabaseMineralFileName);
      AtualizarLista;
      AddClasses;
      AddSubclasses;
      AddGroups;
      AddSubgroups;
      FormFrameFicha.EditingMode(True);
      FormFrameFicha.RefreshImages;
      RefreshImages;
    end
    else
    begin
      FormFrameFicha.EditingMode(False);
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
      Dados.DatabaseMineralFileName := EmptyStr;
    end;
  end
  else
  begin
    FormFrameFicha.EditingMode(False);
    ShowMessage(Lang.NoDatabaseSelected);
  end;
end;

procedure TFormFichaEspecie.MenuItemRemImage1Click(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.MenuItemRemImage2Click(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.MenuItem21Click(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.MenuItem22Click(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.MenuItem23Click(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.MenuItem24Click(Sender: TObject);
begin

end;

procedure TFormFichaEspecie.MenuItem25Click(Sender: TObject);
begin

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

procedure TFormFichaEspecie.ToolButtonRemoveImageClick(Sender: TObject);
begin

end;

//to do: este procedimento deverá ser todo refeito já que o sistema de filtro será mudado
function TFormFichaEspecie.AtualizarLista: boolean;
var
  SelectSQL: string;
begin
  ListboxMinerais.Clear;
  SelectSQL :=  Dados.SelectSQL(EmptyStr,EmptyStr);

  if (ComboboxClasse.Text = EmptyStr) then
  begin
    if (ComboboxSubclasse.Text = EmptyStr) then
    begin
      if (ComboboxGrupo.Text = EmptyStr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     //nenhum combobox selecionado   1
          SelectSQL :=
            SelectSQL + ' WHERE (dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin  //combobox subgrupos    2
          SelectSQL :=
            SelectSQL + ' WHERE (subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY' + DefinirOrdem + ';';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     // combobox grupos   3
          SelectSQL :=
            SelectSQL + ' WHERE (grupo = "' + ComboboxGrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin     //combobox BGRALabelGrupo e subgrupo   4
          SelectSQL :=
            SelectSQL + ' WHERE (grupo = "' + ComboboxGrupo.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin           //combobox subclasse 5
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin  // combobox subclasse e subgrupo  6
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //combobox subclasse e BGRALabelGrupo   7
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo ="' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin   //subclasse BGRALabelGrupo subgrupo      8
          SelectSQL :=
            SelectSQL + ' WHERE (subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end;
  end
  else
  begin
    if (ComboboxSubclasse.Text = emptystr) then
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin     //classe      9
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe subgrupos    10
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin      //classe grupos    11
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe BGRALabelGrupo subgrupo     12
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end
    else
    begin
      if (ComboboxGrupo.Text = emptystr) then
      begin
        if (ComboboxSubgrupo.Text = emptystr) then
        begin   //classe subclasse     13
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end
        else
        begin    //classe subclasse subgrupo   14
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and subgrupo = "' + ComboboxSubgrupo.Text +
            '" and dureza_min >= "' + comboboxDureza_min.Text +
            '" and dureza_max <= "' + comboboxdureza_max.Text +
            '" and densidade_min >= "' + EditFiltroDens_min.Text +
            '" and densidade_max<= "' + EditFiltroDens_Max.Text +
            '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end
      else
      begin   //classe subclasse BGRALabelGrupo      15
        if (ComboboxSubgrupo.Text = emptystr) then
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end
        else    //classe subclasse BGRALabelGrupo subgrupo    16
        begin
          SelectSQL :=
            SelectSQL + ' WHERE (classe = "' + ComboboxClasse.Text +
            '" and subclasse = "' + ComboboxSubclasse.Text +
            '" and grupo = "' + ComboboxGrupo.Text + '" and subgrupo = "' +
            ComboboxSubgrupo.Text + '" and dureza_min >= "' +
            comboboxDureza_min.Text + '" and dureza_max <= "' +
            comboboxdureza_max.Text + '" and densidade_min >= "' +
            EditFiltroDens_min.Text + '" and densidade_max<= "' +
            EditFiltroDens_Max.Text + '") ORDER BY ' + DefinirOrdem + ';';
        end;
      end;
    end;
  end;

  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(SelectSQL);
  if Dados.TableGeneral.Count > 0 then
    if Dados.TableGeneral.MoveFirst then
    begin
      Num := 0;
      ProgressBar1.Max := 100;
      ProgressBar1.Position := 0;
      while (not Dados.TableGeneral.EOF) do
      begin
        if Filtro_Nome = False then
          if Filtro_Ocorrencia = False then
            if Filtro_Associacao = False then
              if Filtro_Cor = False then
                if Filtro_Brilho = False then
                  ListboxMinerais.Items.add(Dados.TableGeneral.FieldByName['nome']);
        Dados.TableGeneral.Next;
        Inc(Num);
        ProgressBar1.Position := Trunc(100 * (Num / Dados.TableGeneral.RowCount));
      end;
      ProgressBar1.Position := 0;
    end;
  if ListboxMinerais.Count=0 then
    BCLabelRegistros.Caption := 'Nenhum Registro' //to do: Substituir pela constate do idioma
  else
  if ListboxMinerais.Count = 1 then
    BCLabelRegistros.Caption := '1 Registro'
  else
    BCLabelRegistros.Caption := IntToStr(ListboxMinerais.Count) + ' Registros';
end;

function TFormFichaEspecie.UpdateList: Integer;
begin

end;

function TFormFichaEspecie.Filtro_Nome: boolean;
var
  eliminar: boolean;
  I, K: integer;
  StrAux: string;
begin
  Eliminar := True;
  if (EditNome.Text = Emptystr) then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableGeneral.Count > 0 then
      if (Dados.TableGeneral.FieldByName['nome'] <> EmptyStr) then
      begin
        K := (Length(EditNome.Text));
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableGeneral.FieldByName['nome'], I, K);
          if (UpCase(StrAux) = UpCase(EditNome.Text)) then
            Eliminar := False;
        end;
      end;
  end;
  Result := Eliminar;
end;

function TFormFichaEspecie.Filtro_Ocorrencia: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroOcorrencia.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableGeneral.Count > 0 then
    begin
      if (Dados.TableGeneral.FieldByName['ocorrencia'] <> EmptyStr) then
      begin
        K := Length(EditFiltroOcorrencia.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableGeneral.FieldByName['ocorrencia'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroOcorrencia.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.Filtro_Associacao: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroAssociacao.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableGeneral.Count > 0 then
    begin
      if (Dados.TableGeneral.FieldByName['associacao'] <> EmptyStr) then
      begin
        K := Length(EditFiltroAssociacao.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableGeneral.FieldByName['associacao'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroAssociacao.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.Filtro_Cor: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroCor.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableGeneral.Count > 0 then
    begin
      if (Dados.TableGeneral.FieldByName['cor'] <> EmptyStr) then
      begin
        K := Length(EditFiltroCor.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableGeneral.FieldByName['cor'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroCor.Text)) then

          Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.Filtro_Brilho: boolean;
var
  Eliminar: boolean;
  StrAux: string;
  I, K: integer;
begin
  Eliminar := True;
  if EditFiltroBrilho.Text = EmptyStr then
  begin
    Eliminar := False;
  end
  else
  begin
    if Dados.TableGeneral.Count > 0 then
    begin
      if (Dados.TableGeneral.FieldByName['brilho'] <> EmptyStr) then
      begin
        K := Length(EditFiltroBrilho.Text);
        for I := 0 to K do
        begin
          StrAux := Copy(Dados.TableGeneral.FieldByName['brilho'], I, K);
          if (UpCase(StrAux) = UpCase(EditFiltroBrilho.Text)) then
            Eliminar := False;
        end;
      end;
    end;
    Result := Eliminar;
  end;
end;

function TFormFichaEspecie.MineralogyName: string;
begin
  if (ComboBoxSubGrupo.Text = EmptyStr) then
  begin
    if (ComboBoxGrupo.Text = EmptyStr) then
    begin
      if (ComboBoxSubClasse.Text = EmptyStr) then
      begin
        if (ComboBoxClasse.Text = EmptyStr) then
        begin
          Result := 'Geral';
        end
        else
          Result := ComboBoxClasse.Text;
      end
      else
        Result := ComboBoxSubClasse.Text;
    end
    else
      Result := ComboBoxGrupo.Text;
  end
  else
    Result := ComboBoxSubGrupo.Text;
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

    BCLabelOrder.Caption:=Lang.Order;
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
    Label36.Caption:=Lang.Maximum;
end;

procedure TFormFichaEspecie.AddClasses;
begin
  ComboBoxClasse.Items.Clear;
  ComboBoxClasse.Items.add(emptystr);
  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
    'SELECT DISTINCT classe FROM '+Dados.Table1+' ORDER BY classe ASC');
  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['classe']) <> EmptyStr then
          ComboBoxClasse.Items.Add(Dados.TableGeneral.FieldByName['classe']);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.AddGroups;
begin
  ComboBoxGrupo.Items.Clear;
  ComboBoxGrupo.Items.add(EmptyStr);
  if (ComboBoxClasse.Text = emptystr) then
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM '+Dados.Table1+' ORDER BY grupo ASC');
    end
    else
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM '+Dados.Table1+' WHERE (subclasse = "' +
        ComboBoxSubClasse.Text + '")ORDER BY grupo ASC');
    end;
  end
  else
  begin
    if (ComboBoxSubClasse.Text = EmptyStr) then
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo from '+Dados.Table1+' WHERE (classe = "' +
        ComboBoxClasse.Text + '") ORDER BY grupo ASC');
    end
    else
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM '+Dados.Table1+' WHERE( classe = "' +
        ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
        '")ORDER BY grupo ASC');
    end;
  end;

  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['grupo']) <> EmptyStr then
          ComboBoxGrupo.Items.Add(Dados.TableGeneral.FieldByName['grupo']);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.AddSubclasses;
begin
  ComboBoxSubClasse.Items.Clear;
  ComboBoxSubClasse.Items.Add(EmptyStr);
  if (ComboBoxClasse.Text = emptystr) then
  begin
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT subclasse FROM '+Dados.Table1+' ORDER BY subclasse ASC');
  end
  else
  begin
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT subclasse FROM '+Dados.Table1+' WHERE( classe = "' +
      ComboBoxClasse.Text + '") ORDER BY subclasse ASC');
  end;
  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['subclasse']) <> EmptyStr then
          ComboBoxSubClasse.Items.Add(Dados.TableGeneral.FieldByName['subclasse']);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.AddSubgroups;
begin
  ComboboxSubgrupo.Items.Clear;
  ComboBoxSubgrupo.Items.add(EmptyStr);
  if ComboBoxClasse.Text = emptystr then
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(grupo = "' +
          ComboBoxGrupo.Text + '") ORDER BY subgrupo ASC');
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(subclasse = "' +
          ComboBoxSubClasse.Text + '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(subclasse = "' +
          ComboBoxSubclasse.Text + '" and grupo = "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC');
      end;
    end;
  end
  else
  begin
    if (ComboBoxSubClasse.Text = emptystr) then
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe = "' +
          ComboBoxClasse.Text + '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe= "' +
          ComboBoxClasse.Text + '" and grupo= "' + ComboBoxGrupo.Text +
          '") ORDER BY subgrupo ASC');
      end;
    end
    else
    begin
      if (ComboBoxGrupo.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe = "' +
          ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
          '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe = "' +
          ComboBoxClasse.Text + '" and subclasse = "' + ComboBoxSubClasse.Text +
          '" and grupo = "' + ComboBoxGrupo.Text + '")ORDER BY subgrupo ASC');
      end;
    end;
  end;

  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['subgrupo']) <> EmptyStr then
          ComboBoxSubgrupo.Items.Add(Dados.TableGeneral.FieldByName['subgrupo']);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFormFichaEspecie.Image1OnClick(Sender: TObject);
begin
  SelectedImage := '1';
  //self.ImagemAmpliada.Picture.Graphic := Image1.Picture.Graphic;
  FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image1.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.Image2OnClick(Sender: TObject);
begin
  SelectedImage := '2';
//  self.ImagemAmpliada.Picture.Graphic := Image2.Picture.Graphic;
  FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image2.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.Image3OnClick(Sender: TObject);
begin
  SelectedImage := '3';
  //self.ImagemAmpliada.Picture.Graphic := Image3.Picture.Graphic;
  FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image3.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.Image4OnClick(Sender: TObject);
begin
  SelectedImage := '4';
//  self.ImagemAmpliada.Picture.Graphic := Image4.Picture.Graphic;
  FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image4.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.Image5OnClick(Sender: TObject);
begin
  SelectedImage := '5';
//  self.ImagemAmpliada.Picture.Graphic := Image5.Picture.Graphic;
  FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image5.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.Image6OnClick(Sender: TObject);
begin
  SelectedImage := '6';
  //self.ImagemAmpliada.Picture.Graphic := Image6.Picture.Graphic;
  FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image6.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.Image7OnClick(Sender: TObject);
begin
  SelectedImage := '7';
//  self.ImagemAmpliada.Picture.Graphic := Image7.Picture.Graphic;
FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image7.Picture.Graphic;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

function TFormFichaEspecie.DefinirOrdem: string;
begin
  if RadioButton1.Checked then
    Result := ' nome ASC'
  else
  if RadioButton2.Checked then
    Result := '(1/(dureza_max+1))'
  else
  if RadioButton3.Checked then
    Result := '(1/(densidade_max+1))';
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
    //Edit1.Text:=EmptyStr;
  end;
end;

procedure TFormFichaEspecie.RefreshImages;
var
  MS: TMemoryStream;
  I, ImagesNumber: integer;
begin
  if ScrollBox8.Visible then
  begin
    ImagesNumber := -1;

    ScrollBox8.UpdateScrollbars;
    if (ListboxMinerais.GetSelectedText <> EmptyStr) then
    begin
      Dados.TableImages := Dados.DatabaseMinerals.GetTable(
        'SELECT imagem1, ' +
        'imagem2, imagem3, imagem4, imagem5, imagem6, imagem7 FROM '+Dados.Table5+
        ' WHERE nome = "' + ListboxMinerais.GetSelectedText + '" ;');
      for I := 1 to 7 do
      begin
        if Dados.TableImages.RowCount > 0 then
        begin
          MS := Dados.TableImages.FieldAsBlob(
            Dados.TableImages.FieldIndex['imagem' + IntToStr(I)]);
          if MS <> nil then
          begin
            Image[I].ToCreate := True;
          end
          else
          begin
            Image[I].ToCreate := False;
          end;
        end
        else
        begin
          Image[I].ToCreate := False;
        end;
      end;
      if Image[1].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[1].Created then
        begin
          Image1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        end
        else
        begin
          Image1 := TImage.Create(nil);
          with Image1 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top;
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image1OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[1].Created := True;
          end;
        end;
      end
      else
      if Image[1].Created then
      begin
        Image1.Picture.Clear;
        Image1.Destroy;
        Image[1].Created := False;
      end;

      if Image[2].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[2].Created then
        begin
          Image2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        end
        else
        begin
          Image2 := TImage.Create(nil);
          with Image2 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image2OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[2].Created := True;
          end;
        end;
      end
      else
      if Image[2].Created then
      begin
        Image2.Picture.Clear;
        Image2.Destroy;
        Image[2].Created := False;
      end;

      if Image[3].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[3].Created then
          Image3.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image3 := TImage.Create(nil);
          with Image3 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image3OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[3].Created := True;
          end;
        end;
      end
      else
      if Image[3].Created then
      begin
        Image3.Picture.Clear;
        Image3.Destroy;
        Image[3].Created := False;
      end;

      if Image[4].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[4].Created then
          Image4.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image4 := TImage.Create(nil);
          with Image4 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image4OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[4].Created := True;
          end;
        end;
      end
      else
      if Image[4].Created then
      begin
        Image4.Picture.Clear;
        Image4.Destroy;
        Image[4].Created := False;
      end;

      if Image[5].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[5].Created then
          Image5.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image5 := TImage.Create(nil);
          with Image5 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image5OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[5].Created := True;
          end;
        end;
      end
      else
      if Image[5].Created then
      begin
        Image5.Picture.Clear;
        Image5.Destroy;
        Image[5].Created := False;
      end;

      if Image[6].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[6].Created then
          Image6.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image6 := TImage.Create(nil);
          with Image6 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image6OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[6].Created := True;
          end;
        end;
      end
      else
      if Image[6].Created then
      begin
        Image6.Picture.Clear;
        Image6.Destroy;
        Image[6].Created := False;
      end;

      if Image[7].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[7].Created then
          Image7.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
            ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr)
        else
        begin
          Image7 := TImage.Create(nil);
          with Image7 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image7OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
              ListboxMinerais.GetSelectedText, EmptyStr, EmptyStr, EmptyStr);
            Image[7].Created := True;
          end;
        end;
      end
      else
      if Image[7].Created then
      begin
        Image7.Picture.Clear;
        Image7.Destroy;
        Image[7].Created := False;
      end;

    end
    else
    begin
      Dados.TableImages := Dados.DatabaseMinerals.GetTable('SELECT * ' +
        'FROM '+Dados.Table6+' WHERE campo = "' + MineralogyName + '" ;');
      for I := 1 to 7 do
      begin
        if Dados.TableImages.RowCount > 0 then
        begin
          MS := Dados.TableImages.FieldAsBlob(
            Dados.TableImages.FieldIndex['imagem' + IntToStr(I)]);
          if MS <> nil then
          begin
            Image[I].ToCreate := True;
          end
          else
          begin
            Image[I].ToCreate := False;
          end;
        end
        else
        begin
          Image[I].ToCreate := False;
        end;
      end;
      if Image[1].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[1].Created then
          Image1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem1',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image1 := TImage.Create(nil);
          with Image1 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top;
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image1OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem1',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[1].Created := True;
          end;
        end;
      end
      else
      if Image[1].Created then
      begin
        Image1.Picture.Clear;
        Image1.Destroy;
        Image[1].Created := False;
      end;

      if Image[2].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[2].Created then
          Image2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem2',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image2 := TImage.Create(nil);
          with Image2 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image2OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem2',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[2].Created := True;
          end;
        end;
      end
      else
      if Image[2].Created then
      begin
        Image2.Picture.Clear;
        Image2.Destroy;
        Image[2].Created := False;
      end;

      if Image[3].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[3].Created then
          Image3.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem3',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image3 := TImage.Create(nil);
          with Image3 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image3OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem3',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[3].Created := True;
          end;
        end;
      end
      else
      if Image[3].Created then
      begin
        Image3.Picture.Clear;
        Image3.Destroy;
        Image[3].Created := False;
      end;

      if Image[4].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[4].Created then
          Image4.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem4',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image4 := TImage.Create(nil);
          with Image4 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image4OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem4',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[4].Created := True;
          end;
        end;
      end
      else
      if Image[4].Created then
      begin
        Image4.Picture.Clear;
        Image4.Destroy;
        Image[4].Created := False;
      end;
      if Image[5].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[5].Created then
          Image5.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem5',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image5 := TImage.Create(nil);
          with Image5 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image5OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem5',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[5].Created := True;
          end;
        end;
      end
      else
      if Image[5].Created then
      begin
        Image5.Picture.Clear;
        Image5.Destroy;
        Image[5].Created := False;
      end;

      if Image[6].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[6].Created then
          Image6.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem6',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image6 := TImage.Create(nil);
          with Image6 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image6OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem6',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[6].Created := True;
          end;
        end;
      end
      else
      if Image[6].Created then
      begin
        Image6.Picture.Clear;
        Image6.Destroy;
        Image[6].Created := False;
      end;

      if Image[7].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[7].Created then
          Image7.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem7',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName)
        else
        begin
          Image7 := TImage.Create(nil);
          with Image7 do
          begin
            Parent := ScrollBox8;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            AntialiasingMode := amOn;
            OnClick := @Image7OnClick;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem7',
              EmptyStr, EmptyStr, EmptyStr, MineralogyName);
            Image[7].Created := True;
          end;
        end;
      end
      else
      if Image[7].Created then
      begin
        Image7.Picture.Clear;
        Image7.Destroy;
        Image[7].Created := False;
      end;
    end;
  end;
  FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFormFichaEspecie.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //FormFichaEspecie.Free;
  Application.Terminate;
end;

procedure TFormFichaEspecie.ComboBoxGrupoChange(Sender: TObject);
begin
  AddSubgroups;
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  FormFrameFicha.RefreshImages;
end;

procedure TFormFichaEspecie.ComboBoxSubclasseChange(Sender: TObject);
begin
  AddGroups;
  AddSubgroups;
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  FormFrameFicha.RefreshImages;
end;

procedure TFormFichaEspecie.ComboBoxSubgrupoChange(Sender: TObject);
begin
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  FormFrameFicha.RefreshImages;
end;
{
procedure TFormFichaEspecie.EditClasse_CristalinaEditingDone(Sender: TObject);
begin
  if not BtnSaveMod.Enabled then
  begin
    btnSaveMod.Enabled:=True;

    ..end;
end;

procedure TFormFichaEspecie.EditClasse_CristalinaKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  if not BtnSaveMod.Enabled then
  begin
    btnSaveMod.Enabled:=True;
  end;
end;
 }
procedure TFormFichaEspecie.EditFiltroAssociacaoEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroAssociacao.Text <> Associacao) then
      AtualizarLista;
    Associacao := EditFiltroAssociacao.Text;
  end;
end;

procedure TFormFichaEspecie.EditFiltroBrilhoEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroBrilho.Text <> Brilho) then
      AtualizarLista;
    Brilho := EditFiltroBrilho.Text;
  end;
end;
{
procedure TFormFichaEspecie.EditClasseEditingDone(Sender: TObject);
begin
  if not BtnSaveMod.Enabled then
  begin
    BtnSaveMod.Enabled:=True;
  end;
  Preenche_Classes;
end;

procedure TFormFichaEspecie.EditClasseKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if not BtnSaveMod.Enabled then
  begin
    BtnSaveMod.Enabled:=True;
  end;
  Preenche_Classes;
end;
 }
procedure TFormFichaEspecie.EditFiltroCorEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroCor.Text <> Cor) then
      AtualizarLista;
    Cor := EditFiltroCor.Text;
  end;
end;

procedure TFormFichaEspecie.EditFiltroDens_MaxEditingDone(Sender: TObject);
begin
  if (EditFiltroDens_Max.Text <> Den_Min) then
  begin
    Den_Max := StringReplace(EditFiltroDens_Max.Text, ',', '.', []);
    EditFiltroDens_Max.Text := Den_Max;
    AtualizarLista;
  end;
end;

procedure TFormFichaEspecie.EditFiltroDens_minEditingDone(Sender: TObject);
begin
  if (EditFiltroDens_min.Text <> Den_Min) then
  begin
    Den_Min := StringReplace(EditFiltroDens_min.Text, ',', '.', []);
    EditFiltroDens_min.Text := Den_Min;
    AtualizarLista;
  end;
end;
{
procedure TFormFichaEspecie.EditNomeEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (UltimaPesquisa <> EditNome.Text) then
    begin
      AtualizarLista;
      UltimaPesquisa := EditNome.Text;
    end;
  end;
end;

procedure TFormFichaEspecie.EditFiltroOcorrenciaEditingDone(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditFiltroOcorrencia.Text <> Ocorrencia) then
      AtualizarLista;
    Ocorrencia := EditFiltroOcorrencia.Text;
  end;
end;

procedure TFormFichaEspecie.EditNomeMineralEditingDone(Sender: TObject);
var
  Aux: integer;
begin
  //to do:
  {** PROCEDIMENTO RETIRADO EM 14/10/2015
  if Trim(NomeMineral) <> EmptyStr then
  begin
    Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
      'SELECT nome FROM minerais WHERE nome="' + NomeMineral + '";');
    Aux := ListboxMinerais.Items.IndexOf(NomeMineral);
    if ListboxMinerais.GetSelectedText <> NomeMineral then
    begin
      if Dados.TableMinerals.Count > 0 then
      begin
        ShowMessage(Lang.ThereIsAlreadyARecordWithThatName);
      end
      else
      begin
        if Dados.TableMinerals.MoveFirst then
        begin
          Dados.UpdateField('minerais', 'nome', ListboxMinerais.GetSelectedText,
            Dados.TableMinerals.FieldByName['nome']);
        end;
      end;
    end;
    ListboxMinerais.Items.Delete(Aux);
    ListboxMinerais.Selected[ListboxMinerais.Items.Add(ListboxMinerais.GetSelectedText)] := True;
  end;
  **}
  {
  if (Dados.TableMinerals.FieldByName['nome'] <> ListBoxMinerais.GetSelectedText) then
  begin
    velho := ListboxMinerais.Items.IndexOf(ListboxMinerais.getselectedtext);
    novo := ListboxMinerais.Items.Add(Dados.TableMinerals.FieldByName['nome']);
    ListboxMinerais.items.Exchange(novo, velho);
    ListboxMinerais.Items.Delete(novo);
    Dados.UpdateField('minerais', 'nome', ListboxMinerais.GetSelectedText,
      Dados.TableMinerals.FieldByName['nome'], EmptyStr, EmptyStr, EmptyStr);
  end;}
end;
}
procedure TFormFichaEspecie.ComboBoxClasseChange(Sender: TObject);
begin
  AddSubclasses;
  AddGroups;
  AddSubgroups;
  AtualizarLista;
  Mineralogy_Name.Caption:=MineralogyName;
  FormFrameFicha.RefreshImages;
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
  if ScrollBoxFiltro.Visible then
    ScrollBoxFiltro.Visible := False
  else
    ScrollBoxFiltro.Visible := True;
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
  if ScrollBox8.Visible then
    ScrollBox8.Visible := False
  else
    ScrollBox8.Visible := True;
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

procedure TFormFichaEspecie.ActionRefreshListExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
        AtualizarLista;
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
