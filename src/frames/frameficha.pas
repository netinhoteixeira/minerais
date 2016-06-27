unit frameficha;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, ComCtrls, StdCtrls,
  Buttons, ActnList, unitblobfields, Dialogs, ExtDlgs, Menus,
  unitlanguage, unitconfigfile;

type
  Mode = (Edit, Filter, Visualize);

type

  { TFrameFicha }

  TFrameFicha = class(TFrame)
    ActionFilter: TAction;
    ActionSaveMod: TAction;
    ActionList1: TActionList;
    BitBtnFilter: TBitBtn;
    BitBtnModifications: TBitBtn;
    BtnSaveMod: TBitBtn;
    ComboBoxClass: TComboBox;
    ComboBoxSubclass: TComboBox;
    ComboBoxGroup: TComboBox;
    ComboBoxSubgroup: TComboBox;
    ComboBoxOpticSign: TComboBox;
    EditHardMin: TEdit;
    EditHardMax: TEdit;
    EditDensMin: TEdit;
    EditDensMax: TEdit;
    EditBMax: TEdit;
    EditClasse_Cristalina: TEdit;
    EditDensidade: TEdit;
    EditDureza: TEdit;
    EditComposition: TEdit;
    EditH_M: TEdit;
    EditMineralName: TEdit;
    EditSistema: TEdit;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    GroupBoxOptica1: TGroupBox;
    GroupBoxOptica2: TGroupBox;
    HeaderControl1: THeaderControl;
    ImageCristalografia1: TImage;
    ImageCristalografia2: TImage;
    ImageListHeaderControl: TImageList;
    ImagemAmpliada: TImage;
    ImageOptica1: TImage;
    ImageOptica2: TImage;
    Label1: TLabel;
    LabelAlteracao: TLabel;
    LabelAngulo_2V: TLabel;
    LabelAplicacao: TLabel;
    LabelAssociacao: TLabel;
    LabelBirrefringencia: TLabel;
    LabelBMax: TLabel;
    LabelBrilho: TLabel;
    LabelClasse: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelClivagem: TLabel;
    LabelComposicao: TLabel;
    LabelCor: TLabel;
    LabelCor_Lamina: TLabel;
    LabelDensity: TLabel;
    LabelDistincao: TLabel;
    LabelExtincao: TLabel;
    LabelFratura: TLabel;
    LabelGrupo: TLabel;
    LabelHabito: TLabel;
    LabelHardness: TLabel;
    LabelIndice_Refracao: TLabel;
    LabelLuminescencia: TLabel;
    LabelMagnetismo: TLabel;
    LabelNome: TLabel;
    LabelOcorrencia: TLabel;
    LabelRelevo: TLabel;
    LabelSimbologia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelSinal_optico: TLabel;
    LabelSistema_Cristalino: TLabel;
    LabelSubClasse: TLabel;
    LabelSubGrupo: TLabel;
    LabelTraco: TLabel;
    Memo1: TMemo;
    MemoAlteracao: TMemo;
    MemoAngulo: TMemo;
    MemoAplicacao: TMemo;
    MemoAssociation: TMemo;
    MemoBirrefringencia: TMemo;
    MemoBrilho: TMemo;
    MemoClivagem: TMemo;
    MemoCor: TMemo;
    MemoCorLamina: TMemo;
    MemoDistinction: TMemo;
    MemoExtincao: TMemo;
    MemoFratura: TMemo;
    MemoHabito: TMemo;
    MemoIndiceRefracao: TMemo;
    MemoLuminescencia: TMemo;
    MemoMagnetismo: TMemo;
    MemoOccurrence: TMemo;
    MemoRelevo: TMemo;
    MemoSinalElongacao: TMemo;
    MemoSinalOptico: TMemo;
    MemoTraco: TMemo;
    MenuItemAddImage5: TMenuItem;
    MenuItemRemoveImage5: TMenuItem;
    MenuItemRemoveImage4: TMenuItem;
    MenuItemAddImage4: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControlFicha: TPageControl;
    PanelButtonSave: TPanel;
    PanelFicha: TPanel;
    PopupMenuImage5: TPopupMenu;
    PopupMenuImage4: TPopupMenu;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    TabSheet1: TTabSheet;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButtonAddImage: TToolButton;
    ToolButtonRemoveImage: TToolButton;
    procedure ActionFilterExecute(Sender: TObject);
    procedure ActionSaveModExecute(Sender: TObject);
    procedure ComboBoxClassEditingDone(Sender: TObject);
    procedure ComboBoxGroupEditingDone(Sender: TObject);
    procedure ComboBoxOpticSignEditingDone(Sender: TObject);
    procedure ComboBoxSubclassEditingDone(Sender: TObject);
    procedure ComboBoxSubgroupEditingDone(Sender: TObject);
    procedure EditBMaxEditingDone(Sender: TObject);
    procedure EditClasse_CristalinaEditingDone(Sender: TObject);
    procedure EditCompositionEditingDone(Sender: TObject);
    procedure EditH_MEditingDone(Sender: TObject);
    procedure EditMineralNameEditingDone(Sender: TObject);
    procedure EditSistemaEditingDone(Sender: TObject);
    //procedure HeaderControl1SectionClick(HeaderControl: TCustomHeaderControl;
      //Section: THeaderSection);
    procedure MemoAlteracaoEditingDone(Sender: TObject);
    procedure MemoAnguloEditingDone(Sender: TObject);
    procedure MemoAplicacaoEditingDone(Sender: TObject);
    procedure MemoAssociationEditingDone(Sender: TObject);
    procedure MemoBirrefringenciaEditingDone(Sender: TObject);
    procedure MemoBrilhoEditingDone(Sender: TObject);
    procedure MemoClivagemEditingDone(Sender: TObject);
    procedure MemoCorEditingDone(Sender: TObject);
    procedure MemoCorLaminaEditingDone(Sender: TObject);
    //procedure MemoDiafaneidadeEditingDone(Sender: TObject);
    procedure MemoDistinctionEditingDone(Sender: TObject);
    procedure MemoExtincaoEditingDone(Sender: TObject);
    procedure MemoFraturaEditingDone(Sender: TObject);
    procedure MemoHabitoEditingDone(Sender: TObject);
    procedure MemoIndiceRefracaoEditingDone(Sender: TObject);
    procedure MemoInterferenciaEditingDone(Sender: TObject);
    procedure MemoLuminescenciaEditingDone(Sender: TObject);
    procedure MemoMagnetismoEditingDone(Sender: TObject);
    procedure MemoOccurrenceEditingDone(Sender: TObject);
    procedure MemoRelevoEditingDone(Sender: TObject);
    procedure MemoSinalElongacaoEditingDone(Sender: TObject);
    procedure MemoSinalOpticoEditingDone(Sender: TObject);
    procedure MemoTracoEditingDone(Sender: TObject);
    // procedure ToolButtonAddImageClick(Sender: TObject);
    // procedure ToolButtonRemoveImageClick(Sender: TObject);
  private
    function FilterGeneralProp(Current: string): boolean;
    function FilterPhysicalProp(Current: string): boolean;
    function FilterOpticalProp(Current: string): boolean;
    function FilterChrystProp(Current: string): boolean;
    { private declarations }
  public
    FormMode: Mode;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AddMineralImage(strType: string; Number: char);
    procedure ChangeLanguage;
    procedure ClearFields;
    procedure EditingMode(Mode: boolean);
    procedure RefreshComboboxes;
    procedure RefreshHeaderControl(ImageNumber: char);
    procedure RefreshImages;
    procedure RemoveImage(Selected: char);
    procedure ViewMineralProp(strName: string);
    { public declarations }
  end;

var
  MineralName: string;

implementation

uses udatamodule, unitfichaespecie, unitadvancedfilter;

{$R *.lfm}

{ TFrameFicha }


constructor TFrameFicha.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //FormFichaEspecie.FrameImages.SelectedImage:='1';
end;
{procedure TFrameFicha.ToolButtonAddImageClick(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditMineralName.Text) <> EmptyStr) then
        AddMineralImage('minerais', FormFichaEspecie.FrameImages.SelectedImage)
      else
        AddMineralImage('mineralogia', FormFichaEspecie.FrameImages.SelectedImage);
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else
    ShowMessage(Lang.NoDatabaseSelected);
end;}

{procedure TFrameFicha.ToolButtonRemoveImageClick(Sender: TObject);
begin
  RemoveImage(FormFichaEspecie.FrameImages.SelectedImage);
end;}

procedure TFrameFicha.ActionSaveModExecute(Sender: TObject);
begin
  Dados.UpdateGeneralInfo(EditMineralName.Text, EditComposition.Text, ComboboxClass.Text,
    ComboboxSubclass.Text, ComboboxGroup.Text, ComboboxSubgroup.Text,
    MemoOccurrence.Text,
    MemoAssociation.Text, MemoDistinction.Text, MemoAlteracao.Text, MemoAplicacao.Text);
  Dados.UpdatePhysicalProp(EditHardMin.Text, EditHardMax.Text,
    EditDensMin.Text, EditDensMax.Text, MemoCor.Text,
    MemoTraco.Text, MemoBrilho.Text, MemoClivagem.Text, MemoFratura.Text,
    MemoMagnetismo.Text, MemoLuminescencia.Text,
    EditMineralName.Text);
  Dados.UpdateOpticalProp(EditBMax.Text,
    ComboBoxOpticSign.Text, MemoSinalOptico.Text, MemoIndiceRefracao.Text,
    MemoBirrefringencia.Text, {MemoInterferencia.Text,} MemoCorLamina.Text,
    MemoSinalElongacao.Text, MemoRelevo.Text, MemoAngulo.Text, MemoExtincao.Text,
    EditMineralName.Text);
  Dados.UpdateCrystallography(EditSistema.Text, EditClasse_Cristalina.Text,
    EditH_M.Text, MemoHabito.Text, EditMineralName.Text);
end;

procedure TFrameFicha.ActionFilterExecute(Sender: TObject);
var
  I: integer;
  List: TStringList;
  Current: string;
  Filter:Boolean;
begin
  List := TStringList.Create;
  Filter := True;
  for I := 0 to FormFichaEspecie.FrameList.ListBoxMinerals.Items.Count - 1 do
  begin
    Current := FormFichaEspecie.FrameList.ListBoxMinerals.Items.Strings[i];
    if not FilterPhysicalProp(Current) then
      if not FilterOpticalProp(Current) then
        if not FilterChrystProp(Current) then
          List.Add(Current);
  end;
  for I := 0 to List.Count - 1 do
  begin
    FormFichaEspecie.FrameList.ListBoxMinerals.Items.Add(List[I]);
  end;
end;

function TFrameFicha.FilterOpticalProp(Current: string): boolean;
var
  Return: boolean;
begin
  Return := True;
  if Dados.MineralFiltered(Current, Dados.Table3, ComboBoxOpticSign.Text,
    FieldOpticSign) then
    if Dados.MineralFiltered(Current, Dados.Table3, MemoSinalOptico.Text,
      FieldOpticSignDescr) then
      //if Dados.MineralBiggerThan(Current, Dados.Table3, EditBMin.Text, FieldBirrMin) then
        if Dados.MineralLessThan(Current, Dados.Table3, EditBMax.Text, FieldBirrMax) then
          if Dados.MineralFiltered(Current, Dados.Table3, MemoBirrefringencia.Text,
            FieldBirrefringence) then
            if Dados.MineralFiltered(Current, Dados.Table3, MemoIndiceRefracao.Text,
              FieldRefractionIndex) then
              if Dados.MineralFiltered(Current, Dados.Table3, MemoCorLamina.Text,
                FieldColorBlade) then
                if Dados.MineralFiltered(Current, Dados.Table3,
                  MemoSinalElongacao.Text, FieldElongationSign) then
                  if Dados.MineralFiltered(Current, Dados.Table3, MemoRelevo.Text, FieldRelief) then
                    if Dados.MineralFiltered(Current, Dados.Table3, MemoAngulo.Text, Field2VAngle) then
                      if Dados.MineralFiltered(Current, Dados.Table3, MemoExtincao.Text, FieldExtinction) then
                            Return := False;
  Result := Return;
end;

function TFrameFicha.FilterChrystProp(Current: string): boolean;
var Return:Boolean;
begin
  Return:=True;
  if Dados.MineralFiltered(Current, Dados.Table4, MemoHabito.Text, FieldHabit) then
    if Dados.MineralFiltered(Current, Dados.Table4, EditSistema.Text, FieldCrystSystem) then
      if Dados.MineralFiltered(Current, Dados.Table4, EditH_M.Text, FieldSymbology) then
        if Dados.MineralFiltered(Current, Dados.Table4, EditSistema.Text, FieldCrystSystem) then
          Return:=False;
  Result:=Return;
end;

procedure TFrameFicha.ComboBoxClassEditingDone(Sender: TObject);
var
  i: integer;
  List: TStringList;
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldClass, ComboboxClass.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.ComboBoxGroupEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldGroup, ComboboxGroup.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.ComboBoxOpticSignEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldOpticSign, ComboboxOpticSign.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.ComboBoxSubclassEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldSubClass, ComboboxSubclass.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.ComboBoxSubgroupEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldSubGroup, ComboboxSubgroup.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.EditBMaxEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldBirrMax, EditBMax.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.EditClasse_CristalinaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table4, FieldChrystClass,
        EditClasse_Cristalina.Text, EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.EditCompositionEditingDone(Sender: TObject);
var
  Minerals: TStringList;
  I: integer;
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldComposition, EditComposition.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.EditH_MEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table4, FieldSymbology, EditH_M.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.EditMineralNameEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin

    end;
  end;
end;

procedure TFrameFicha.EditSistemaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table4, FieldCrystSystem, EditSistema.Text,
        EditMineralName.Text);
    end;
  end;
end;

{procedure TFrameFicha.HeaderControl1SectionClick(HeaderControl: TCustomHeaderControl;
  Section: THeaderSection);
begin
  if (Trim(EditMineralName.Text) <> Emptystr) then
  begin
    case Section.Index of
      0:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
          EditMineralName.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '7';
      end;
    end;
  end;
  RefreshHeaderControl(FormFichaEspecie.FrameImages.SelectedImage);
end;
 }
procedure TFrameFicha.MemoAlteracaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldAlteration, MemoAlteracao.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoAnguloEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, Field2VAngle, MemoAngulo.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoAplicacaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldUse, MemoAplicacao.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoAssociationEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldAssociation, MemoAssociation.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoBirrefringenciaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldBirrefringence, MemoBirrefringencia.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoBrilhoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldBrightness, MemoBrilho.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoClivagemEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldCleavage, MemoClivagem.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoCorEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldColor, MemoCor.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoCorLaminaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldColorBlade, MemoCorLamina.Text,
        EditMineralName.Text);
    end;
  end;
end;

{procedure TFrameFicha.MemoDiafaneidadeEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, 'diafaneidade', MemoDiafaneidade.Text,
        EditMineralName.Text);
    end;
  end;
end;
 }
procedure TFrameFicha.MemoDistinctionEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table1, FieldDistinction, MemoDistinction.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoExtincaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldExtinction, MemoExtincao.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoFraturaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldFracture, MemoFratura.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoHabitoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table4, FieldHabit, MemoHabito.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoIndiceRefracaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldRefractionIndex, MemoIndiceRefracao.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoInterferenciaEditingDone(Sender: TObject);
begin
 { case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'cor_interferencia', MemoInterferencia.Text,
        EditMineralName.Text);
    end;
    Filter:begin

    end;
  end;}
end;

procedure TFrameFicha.MemoLuminescenciaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldLuminescense, MemoLuminescencia.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoMagnetismoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldMagnetism, MemoMagnetismo.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoOccurrenceEditingDone(Sender: TObject);
begin

end;

function TFrameFicha.FilterPhysicalProp(Current: string): boolean;
var
  Return: boolean;
begin
  Return := True;
  if Dados.MineralBiggerThan(Current, Dados.Table2, EditHardMin.Text,
    FieldHardMin) then
  begin
    if Dados.MineralLessThan(Current, Dados.Table2, EditHardMax.Text,
      FieldHardMax) then
    begin
      if Dados.MineralFiltered(Current, Dados.Table2, MemoCor.Text,
        FieldColor) then
      begin
        if Dados.MineralFiltered(Current, Dados.Table2, MemoTraco.Text,
          FieldStreak) then
        begin
          if Dados.MineralFiltered(Current, Dados.Table2,
            MemoBrilho.Text, FieldBrightness) then
          begin
            if Dados.MineralFiltered(Current, Dados.Table2,
              MemoClivagem.Text, FieldCleavage) then
            begin
              if Dados.MineralFiltered(Current, Dados.Table2,
                MemoFratura.Text, FieldFracture) then
              begin
                if Dados.MineralFiltered(Current, Dados.Table2,
                  MemoMagnetismo.Text, FieldMagnetism) then
                begin

                  if Dados.MineralFiltered(Current, Dados.Table2,
                    MemoLuminescencia.Text, FieldLuminescense) then
                  begin
                    Return := False;
                  end;

                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  Result := Return;
end;

procedure TFrameFicha.MemoRelevoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldRelief, MemoRelevo.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoSinalElongacaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldElongationSign, MemoSinalElongacao.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoSinalOpticoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table3, FieldOpticSignDescr, MemoSinalOptico.Text,
        EditMineralName.Text);
    end;
  end;
end;

procedure TFrameFicha.MemoTracoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:
    begin
      Dados.UpdateField(Dados.Table2, FieldStreak, MemoTraco.Text,
        EditMineralName.Text);
    end;
  end;
end;

function TFrameFicha.FilterGeneralProp(Current: string): boolean;
var
  Return: boolean;
begin
  Return := True;
  if Dados.MineralFiltered(Current, Dados.Table1, EditMineralName.Text,
    FieldName) then
  begin
    if Dados.MineralFiltered(Current, Dados.Table1, EditComposition.Text,
      FieldComposition) then
    begin
      if Dados.MineralFiltered(Current, Dados.Table1, EditComposition.Text,
        FieldComposition) then
      begin
        if Dados.MineralFiltered(Current, Dados.Table1, ComboBoxClass.Text,
          FieldClass) then
        begin
          if Dados.MineralFiltered(Current, Dados.Table1,
            ComboboxSubclass.Text, FieldSubClass) then
          begin
            if Dados.MineralFiltered(Current, Dados.Table1,
              ComboboxGroup.Text, FieldGroup) then
            begin
              if Dados.MineralFiltered(Current, Dados.Table1,
                ComboboxSubGroup.Text, FieldSubGroup) then
              begin
                if Dados.MineralFiltered(Current, Dados.Table1,
                  MemoOccurrence.Text, FieldOccurrence) then
                begin
                  if Dados.MineralFiltered(Current, Dados.Table1,
                    MemoAssociation.Text, FieldAssociation) then
                  begin
                    if Dados.MineralFiltered(Current, Dados.Table1,
                      MemoDistinction.Text, FieldDistinction) then
                    begin
                      if Dados.MineralFiltered(Current, Dados.Table1,
                        MemoAlteracao.Text, FieldAlteration) then
                      begin
                        if Dados.MineralFiltered(Current, Dados.Table1,
                          MemoAplicacao.Text, FieldUse) then
                        begin
                          Return := False;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  Result := Return;
end;

procedure TFrameFicha.AddMineralImage(strType: string; Number: char);
begin
  OpenPictureDialog1.FileName := emptystr;
  if OpenPictureDialog1.Execute then
    if (OpenPictureDialog1.FileName <> emptystr) then
    begin
      if strType = 'minerais' then
      begin
        AddBlobFieldMineral(OpenPictureDialog1.FileName,
          Dados.Table5, 'imagem' + Number, EditMineralName.Text);
      end;
      FormFichaEspecie.FrameImages.SelectedImage := Number;
      RefreshImages;
    end;
end;

procedure TFrameFicha.ChangeLanguage;
begin
  if SetLanguage(ConfigGetLanguage) then
  begin
    TabSheetInf_Gerais.Caption:=Lang.GeneralInformation;
    TabSheetProp_fisicas.Caption:=Lang.PhysicalProperties;
    TabSheetOticas.Caption:=Lang.OpticalProperties;
    TabSheetCristalografia.Caption:=Lang.Crystallography;
    TabSheetImagem.Caption:=Lang.Image;

    LabelNome.Caption:=Lang.Name;
    LabelComposicao.Caption:=Lang.Composition;
    LabelClasse.Caption:=Lang.MineralClass;
    LabelSubClasse.Caption:=Lang.Subclass;
    LabelGrupo.Caption:=Lang.Group;
    LabelSubgrupo.Caption:=Lang.Subgroup;
    LabelOcorrencia.Caption:=Lang.Occurrence;
    LabelAssociacao.Caption:=Lang.Association;
    LabelDistincao.Caption:=Lang.Distinction;
    LabelAlteracao.Caption:=Lang.Alteration;
    LabelAplicacao.Caption:=Lang.Usage;

    LabelHardness.Caption:=Lang.Hardness;
    LabelDensity.Caption:=Lang.Density;
    LabelCor.Caption:=Lang.Color;
    LabelTraco.Caption:=Lang.Streak;
    LabelBrilho.Caption:=Lang.Luster;
    LabelClivagem.Caption:=Lang.Cleavage;
    LabelFratura.Caption:=Lang.Fracture;
    LabelMagnetismo.Caption:=Lang.Magnetism;
    LabelLuminescencia.Caption:=Lang.Luminescence;

    //LabelDiafaneidade.Caption:=Lang.Diaphanousness;
    LabelSinal_Optico.Caption:=Lang.OpticalSignal;
    LabelIndice_Refracao.Caption:=Lang.RefractiveIndex;
    LabelAngulo_2V.Caption:=Lang.Angle2V;
    //LabelCor_Interferencia.Caption:=Lang.InterferenceColor;
    LabelCor_Lamina.Caption:=Lang.BladeColor;
    LabelSinal_Elongacao.Caption:=Lang.SignElongation;
    LabelBirrefringencia.Caption:=Lang.Birefringence;
    LabelRelevo.Caption:=Lang.Relief;
    LabelSistema_Cristalino.Caption:=Lang.CrystallineSystem;
    LabelClasse_Cristalina.Caption:=Lang.CrystalineClass;
    LabelSimbologia.Caption:=Lang.Symbology;
    LabelHabito.Caption:=Lang.Habit;

    ToolbuttonAddImage.Hint:=Lang.AddImage;
    ToolButtonRemoveImage.Hint:=Lang.RemoveImage;
    MenuItemAddImage4.Caption:=Lang.AddImage;
    MenuItemAddImage5.Caption:=Lang.AddImage;;
    MenuItemRemoveImage4.Caption:=Lang.RemoveImage;
    MenuItemRemoveImage5.Caption:=Lang.RemoveImage;
  end;
end;

procedure TFrameFicha.ClearFields;
begin
  //to do: colocar os campos novos: ComboBoxOpticSign, etc
  EditMineralName.Text := '';
  EditComposition.Text := '';
  ComboboxClass.Text := '';
  ComboboxSubclass.Text := '';
  ComboboxGroup.Text := '';
  ComboboxSubgroup.Text := '';
  MemoOccurrence.Text := '';
  MemoAssociation.Text := '';
  MemoDistinction.Text := '';
  MemoAlteracao.Text := '';
  MemoAplicacao.Text := '';
  EditDureza.Text := '';
  EditHardMin.Text := '';
  EditHardMax.Text := '';
  EditDensMin.Text := '';
  EditDensMax.Text := '';
  EditDensidade.Text := '';
  MemoCor.Text := '';
  MemoTraco.Text := '';
  MemoBrilho.Text := '';
  MemoClivagem.Text := '';
  MemoFratura.Text := '';
  MemoMagnetismo.Text := '';
  MemoLuminescencia.Text := '';
  EditBMax.Text := '';
  ComboboxOpticSign.Text := '';
  MemoSinalOptico.Text := '';
  MemoIndiceRefracao.Text := '';
  MemoAngulo.Text := '';
  //MemoInterferencia.Text:='';
  MemoCorLamina.Text := '';
  MemoSinalElongacao.Text := '';
  MemoBirrefringencia.Text := '';
  MemoRelevo.Text := '';
  MemoExtincao.Text := '';
  EditSistema.Text := '';
  EditClasse_Cristalina.Text := '';
  EditH_M.Text := '';
  MemoHabito.Text := '';
end;

procedure TFrameFicha.EditingMode(Mode: boolean);
begin
  //to do: verificar se há campos nao incluidos
  EditComposition.Enabled := Mode;
  EditMineralName.Enabled := Mode;
  ComboboxClass.Enabled := Mode;
  ComboboxSubclass.Enabled := Mode;
  ComboboxGroup.Enabled := Mode;
  ComboboxSubgroup.Enabled := Mode;
  MemoOccurrence.Enabled := Mode;
  MemoAssociation.Enabled := Mode;
  MemoDistinction.Enabled := Mode;
  MemoAlteracao.Enabled := Mode;
  MemoAplicacao.Enabled := Mode;

  EditHardMin.Enabled := Mode;
  EditHardMax.Enabled := Mode;
  EditDensMin.Enabled := Mode;
  EditDensMax.Enabled := Mode;

  MemoCor.Enabled := Mode;
  MemoTraco.Enabled := Mode;
  MemoBrilho.Enabled := Mode;
  MemoClivagem.Enabled := Mode;
  MemoFratura.Enabled := Mode;
  MemoMagnetismo.Enabled := Mode;
  MemoLuminescencia.Enabled := Mode;

  EditBMax.Enabled := Mode;
  ComboBoxOpticSign.Enabled := Mode;
  MemoSinalOptico.Enabled := Mode;
  MemoIndiceRefracao.Enabled := Mode;
  MemoAngulo.Enabled := Mode;
  //MemoInterferencia.Enabled := Mode;
  MemoCorLamina.Enabled := Mode;
  MemoSinalElongacao.Enabled := Mode;
  MemoBirrefringencia.Enabled := Mode;
  MemoRelevo.Enabled := Mode;
  MemoExtincao.Enabled := Mode;

  EditSistema.Enabled := Mode;
  EditClasse_Cristalina.Enabled := Mode;
  EditH_M.Enabled := Mode;
  MemoHabito.Enabled := Mode;
end;

procedure TFrameFicha.RefreshComboboxes;
begin
  //to do:substituir editexts de classe, subclasse, etc para comboboxes com readonly:=false
  ComboboxOpticSign.Items := Dados.ReturnDistinctField(FieldOpticSign, Dados.Table3);
  ComboboxClass.Items := Dados.ReturnDistinctField(FieldClass, Dados.Table1);
  ComboboxSubclass.Items := Dados.ReturnDistinctField(FieldSubClass, Dados.Table1);
  ComboboxGroup.Items := Dados.ReturnDistinctField(FieldGroup, Dados.Table1);
  ComboboxSubgroup.Items := Dados.ReturnDistinctField(FieldSubGroup, Dados.Table1);
end;

procedure TFrameFicha.RefreshHeaderControl(ImageNumber: char);
begin
  if (EditMineralName.Text <> EmptyStr) then
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem' + ImageNumber,
      EditMineralName.Text, EmptyStr);
  end;
end;

procedure TFrameFicha.RefreshImages;
begin
  self.ImagemAmpliada.Picture.Graphic :=
    SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
    EditMineralName.Text, EmptyStr);
  self.ImageOptica1.Picture.Graphic :=
    SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
    EditMineralName.Text, EmptyStr);
  self.ImageOptica2.Picture.Graphic :=
    SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
    EditMineralName.Text, EmptyStr);
  self.ImageCristalografia1.Picture.Graphic :=
    SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
    EditMineralName.Text, EmptyStr);
  self.ImageCristalografia2.Picture.Graphic :=
    SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
    EditMineralName.Text, EmptyStr);
  RefreshHeaderControl(FormFichaEspecie.FrameImages.SelectedImage);
  FOrmFIchaEspecie.FrameImages.RefreshImages(EditMineralName.Text);
end;

procedure TFrameFicha.RemoveImage(Selected: char);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditMineralName.Text) <> EmptyStr) then
      begin
        ClearBlobField(Dados.Table5, 'imagem' + Selected,
          EditMineralName.Text, EmptyStr, EmptyStr, EmptyStr);
      end;
      RefreshImages;
    end
    else
      ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else
    ShowMessage(Lang.NoDatabaseSelected);
  FormFichaEspecie.FrameImages.SelectedImage := '1';
end;

procedure TFrameFicha.ViewMineralProp(strName: string);
var
  SelectSQL: string;
begin
  //NomeMineral é usado no editingdone do EditMineralName
  MineralName := strName;
  if MineralName <> EmptyStr then
  begin
    //Mineralogy_Name.Caption:='';
    SelectSQL := Dados.SelectSQL(Dados.Table1, strName);
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditMineralName.Text := Dados.TableGeneral.FieldByName[FieldName];
    EditComposition.Text := Dados.TableGeneral.FieldByName[FieldComposition];
    ComboboxClass.Text := Dados.TableGeneral.FieldByName[FieldClass];
    ComboboxSubclass.Text := Dados.TableGeneral.FieldByName[FieldSubClass];
    ComboboxGroup.Text := Dados.TableGeneral.FieldByName[FieldGroup];
    ComboboxSubgroup.Text := Dados.TableGeneral.FieldByName[FieldSubGroup];
    MemoOccurrence.Text := Dados.TableGeneral.FieldByName[FieldOccurrence];
    MemoAssociation.Text := Dados.TableGeneral.FieldByName[FieldAssociation];
    MemoDistinction.Text := Dados.TableGeneral.FieldByName[FieldDistinction];
    MemoAlteracao.Text := Dados.TableGeneral.FieldByName[FieldAlteration];
    MemoAplicacao.Text := Dados.TableGeneral.FieldByName[FieldUse];

    SelectSQL := Dados.SelectSQL(Dados.Table2, EditMineralName.Text);
    Dados.TablePhysical := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditHardMin.Text := Dados.TablePhysical.FieldByName[FieldHardMin];
    EditHardMax.Text := Dados.TablePhysical.FieldByName[FieldHardMax];
    EditDensMin.Text := Dados.TablePhysical.FieldByName[FieldDensMin];
    EditDensMax.Text := Dados.TablePhysical.FieldByName[FieldDensMax];
    if EditHardMin.Text = EditHardMax.Text then
      EditDureza.Text := EditHardMin.Text
    else
      EditDureza.Text := EditHardMin.Text + ' - ' + EditHardMax.Text;
    if EditDensMin.Text = EditDensMax.Text then
      EditDensidade.Text := EditDensMin.Text
    else
      EditDensidade.Text := EditDensMin.Text + ' - ' + EditDensMax.Text;
    MemoCor.Text := Dados.TablePhysical.FieldByName[FieldColor];
    MemoTraco.Text := Dados.TablePhysical.FieldByName[FieldStreak];
    MemoBrilho.Text := Dados.TablePhysical.FieldByName[FieldBrightness];
    MemoClivagem.Text := Dados.TablePhysical.FieldByName[FieldCleavage];
    MemoFratura.Text := Dados.TablePhysical.FieldByName[FieldFracture];
    MemoMagnetismo.Text := Dados.TablePhysical.FieldByName[FieldMagnetism];
    MemoLuminescencia.Text := Dados.TablePhysical.FieldByName[FieldLuminescense];

    SelectSQL := Dados.SelectSQL(Dados.Table3, EditMineralName.Text);
    Dados.TableOptics := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditBMax.Text := Dados.TableOptics.FieldByName[FieldBirrMax];
    ComboBoxOpticSign.Text := Dados.TableOptics.FieldByName[FieldOpticSign];
    MemoSinalOptico.Text := Dados.TableOptics.FieldByName[FieldOpticSignDescr];
    MemoIndiceRefracao.Text := Dados.TableOptics.FieldByName[FieldRefractionIndex];
    MemoAngulo.Text := Dados.TableOptics.FieldByName[Field2VAngle];
    //MemoInterferencia.Text := Dados.TableOptics.FieldByName[FieldInterference];
    MemoCorLamina.Text := Dados.TableOptics.FieldByName[FieldColorBlade];
    MemoSinalElongacao.Text := Dados.TableOptics.FieldByName[FieldElongationSign];
    MemoBirrefringencia.Text := Dados.TableOptics.FieldByName[FieldBirrefringence];
    MemoRelevo.Text := Dados.TableOptics.FieldByName[FieldRelief];
    MemoExtincao.Text := Dados.TableOptics.FieldByName[FieldExtinction];


    SelectSQL := Dados.SelectSQL(Dados.Table4, EditMineralName.Text);
    Dados.TableChryst := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditSistema.Text := Dados.TableChryst.FieldByName[FieldCrystSystem];
    EditClasse_Cristalina.Text := Dados.TableChryst.FieldByName[FieldChrystClass];
    EditH_M.Text := Dados.TableChryst.FieldByName[FieldSymbology];
    MemoHabito.Text := Dados.TableChryst.FieldByName[FieldHabit];

    FormFichaEspecie.FrameImages.SelectedImage := '1';
    RefreshImages;
    BtnSaveMod.Enabled := False;
  end;
end;

destructor TFrameFicha.Destroy;
begin
  inherited Destroy;
end;

end.
