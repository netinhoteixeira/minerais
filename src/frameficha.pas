unit frameficha;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, ComCtrls, StdCtrls,
  Buttons, ActnList, unitblobfields, Dialogs, ExtDlgs, Menus,
  unitlanguage, unitconfigfile;

type Mode = (Edit, Filter, Visualize);

type

  { TFrameFicha }

  TFrameFicha = class(TFrame)
    ActionRemoveImage5: TAction;
    ActionAddImage5: TAction;
    ActionRemoveImage4: TAction;
    ActionAddImage4: TAction;
    ActionSaveMod: TAction;
    ActionList1: TActionList;
    BitBtnModifications: TBitBtn;
    BtnSaveMod: TBitBtn;
    ComboBoxClass: TComboBox;
    ComboBoxSubclass: TComboBox;
    ComboBoxGroup: TComboBox;
    ComboBoxSubgroup: TComboBox;
    ComboBoxOpticSign: TComboBox;
    Edit2VMin: TEdit;
    Edit2VMax: TEdit;
    EditHardMin: TEdit;
    EditHardMax: TEdit;
    EditDensMin: TEdit;
    EditDensMax: TEdit;
    EditBMin: TEdit;
    EditBMax: TEdit;
    EditClasse_Cristalina: TEdit;
    EditDensidade: TEdit;
    EditDureza: TEdit;
    EditFormula: TEdit;
    EditH_M: TEdit;
    EditNomeMineral: TEdit;
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
    LabelBMin: TLabel;
    LabelBrilho: TLabel;
    LabelClasse: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelClivagem: TLabel;
    LabelComposicao: TLabel;
    LabelCor: TLabel;
    LabelCor_Interferencia: TLabel;
    LabelCor_Lamina: TLabel;
    LabelDensity: TLabel;
    LabelDiafaneidade: TLabel;
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
    MemoAlteracao: TMemo;
    MemoAngulo: TMemo;
    MemoAplicacao: TMemo;
    MemoAssociacao: TMemo;
    MemoBirrefringencia: TMemo;
    MemoBrilho: TMemo;
    MemoClivagem: TMemo;
    MemoCor: TMemo;
    MemoCorLamina: TMemo;
    MemoDiafaneidade: TMemo;
    MemoDistincao: TMemo;
    MemoExtincao: TMemo;
    MemoFratura: TMemo;
    MemoHabito: TMemo;
    MemoIndiceRefracao: TMemo;
    MemoInterferencia: TMemo;
    MemoLuminescencia: TMemo;
    MemoMagnetismo: TMemo;
    MemoOcorrencia: TMemo;
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
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButtonAddImage: TToolButton;
    ToolButtonRemoveImage: TToolButton;
    procedure ActionAddImage4Execute(Sender: TObject);
    procedure ActionAddImage5Execute(Sender: TObject);
    procedure ActionRemoveImage4Execute(Sender: TObject);
    procedure ActionRemoveImage5Execute(Sender: TObject);
    procedure ActionSaveModExecute(Sender: TObject);
    procedure ComboBoxClassEditingDone(Sender: TObject);
    procedure ComboBoxGroupEditingDone(Sender: TObject);
    procedure ComboBoxOpticSignEditingDone(Sender: TObject);
    procedure ComboBoxSubclassEditingDone(Sender: TObject);
    procedure ComboBoxSubgroupEditingDone(Sender: TObject);
    procedure Edit2VMaxEditingDone(Sender: TObject);
    procedure Edit2VMinEditingDone(Sender: TObject);
    procedure EditBMaxEditingDone(Sender: TObject);
    procedure EditBMinEditingDone(Sender: TObject);
    procedure EditClasse_CristalinaEditingDone(Sender: TObject);
    procedure EditFormulaEditingDone(Sender: TObject);
    procedure EditH_MEditingDone(Sender: TObject);
    procedure EditNomeMineralEditingDone(Sender: TObject);
    procedure EditSistemaEditingDone(Sender: TObject);
    procedure HeaderControl1SectionClick(HeaderControl: TCustomHeaderControl;
      Section: THeaderSection);
    procedure MemoAlteracaoChange(Sender: TObject);
    procedure MemoAlteracaoEditingDone(Sender: TObject);
    procedure MemoAnguloEditingDone(Sender: TObject);
    procedure MemoAplicacaoEditingDone(Sender: TObject);
    procedure MemoAssociacaoEditingDone(Sender: TObject);
    procedure MemoBirrefringenciaEditingDone(Sender: TObject);
    procedure MemoBrilhoEditingDone(Sender: TObject);
    procedure MemoClivagemEditingDone(Sender: TObject);
    procedure MemoCorEditingDone(Sender: TObject);
    procedure MemoCorLaminaEditingDone(Sender: TObject);
    procedure MemoDiafaneidadeEditingDone(Sender: TObject);
    procedure MemoDistincaoEditingDone(Sender: TObject);
    procedure MemoExtincaoEditingDone(Sender: TObject);
    procedure MemoFraturaEditingDone(Sender: TObject);
    procedure MemoHabitoEditingDone(Sender: TObject);
    procedure MemoIndiceRefracaoEditingDone(Sender: TObject);
    procedure MemoInterferenciaEditingDone(Sender: TObject);
    procedure MemoLuminescenciaEditingDone(Sender: TObject);
    procedure MemoMagnetismoEditingDone(Sender: TObject);
    procedure MemoOcorrenciaEditingDone(Sender: TObject);
    procedure MemoRelevoEditingDone(Sender: TObject);
    procedure MemoSinalElongacaoEditingDone(Sender: TObject);
    procedure MemoSinalOpticoEditingDone(Sender: TObject);
    procedure MemoTracoEditingDone(Sender: TObject);
    procedure ToolButtonAddImageClick(Sender: TObject);
    procedure ToolButtonRemoveImageClick(Sender: TObject);
  private
    { private declarations }
  public
    FormMode:Mode;
    constructor Create(AOwner:TComponent); override;
    procedure AddMineralImage(strType:String; Number:Char);
    procedure ChangeLanguage;
    procedure ClearFields;
    procedure EditingMode(Mode:Boolean);
    procedure RefreshComboboxes;
    procedure RefreshHeaderControl(ImageNumber:Char);
    procedure RefreshImages;
    procedure RemoveImage(Selected:Char);
    procedure ViewMineralProp(strName:String);
    { public declarations }
  end;

var MineralName:String;
    MineralogyName:String; //Usado no banco de dados de Mineralogia Sistemática

implementation
uses udatamodule, unitframelist, unitfichaespecie;

{$R *.lfm}

{ TFrameFicha }

procedure TFrameFicha.ToolButtonAddImageClick(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditNomeMineral.Text) <> EmptyStr) then
        AddMineralImage('minerais', FormFichaEspecie.FrameImages.SelectedImage)
      else
        AddMineralImage('mineralogia',FormFichaEspecie.FrameImages.SelectedImage)
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);
end;

procedure TFrameFicha.ToolButtonRemoveImageClick(Sender: TObject);
begin
  RemoveImage(FormFichaEspecie.FrameImages.SelectedImage);
end;

procedure TFrameFicha.ActionSaveModExecute(Sender: TObject);
begin
  Dados.UpdateGeneralInfo(EditNomeMineral.Text, EditFormula.Text, ComboboxClass.Text,
    ComboboxSubclass.Text, ComboboxGroup.Text, ComboboxSubgroup.Text, MemoOcorrencia.Text,
    MemoAssociacao.Text, MemoDIstincao.Text, MemoAlteracao.Text, MemoAplicacao.Text);
  Dados.UpdatePhysicalProp(EditHardMin.Text, EditHardMax.Text,
    EditDensMin.Text, EditDensMax.Text, MemoCor.Text,
    MemoTraco.Text, MemoBrilho.Text, MemoClivagem.Text, MemoFratura.Text,
    MemoMagnetismo.Text, MemoLuminescencia.Text, MemoDiafaneidade.Text,
    EditNomeMineral.Text);
  Dados.UpdateOpticalProp(EditBMin.Text, EditBMax.Text,
    ComboBoxOpticSign.Text, MemoSinalOptico.Text, MemoIndiceRefracao.Text,
    MemoBirrefringencia.Text, MemoInterferencia.Text, MemoCorLamina.Text,
    MemoSinalElongacao.Text, MemoRelevo.Text, MemoAngulo.Text, Edit2VMin.Text,
    Edit2VMax.Text, MemoExtincao.Text, EditNomeMineral.Text);
  Dados.UpdateCrystallography(EditSistema.Text, EditClasse_Cristalina.Text,
    EditH_M.Text, MemoHabito.Text, EditNomeMineral.Text);
end;

procedure TFrameFicha.ActionAddImage4Execute(Sender: TObject);
begin

end;

procedure TFrameFicha.ActionAddImage5Execute(Sender: TObject);
begin

end;

procedure TFrameFicha.ActionRemoveImage4Execute(Sender: TObject);
begin

end;

procedure TFrameFicha.ActionRemoveImage5Execute(Sender: TObject);
begin

end;

procedure TFrameFicha.ComboBoxClassEditingDone(Sender: TObject);
var i:Integer;
begin
  Case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1, FieldClass, ComboboxClass.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin
      for i:=0 to FormFichaEspecie.FrameList.ListBoxMinerals.Items.Count -1 do
      begin
        Dados.MineralFiltered(FormFichaEspecie.FrameList.ListBoxMinerals.Items.
          Names[i], Dados.Table1, ComboboxClass.Text, FieldClass);
      end;
    end;
  end;
end;

procedure TFrameFicha.ComboBoxGroupEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1,  'grupo', ComboboxSubclass.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.ComboBoxOpticSignEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'sinal_optico', ComboboxOpticSign.Text,
        EditNomeMineral.Text)
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.ComboBoxSubclassEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1,'subclasse', ComboboxSubclass.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.ComboBoxSubgroupEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1, 'subgrupo', ComboboxSubgroup.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.Edit2VMaxEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:Begin
      Dados.UpdateField(Dados.Table3, 'angulo_max', Edit2VMax.Text,
        EditNomeMineral.Text);
    end;
    FIlter:begin

    end;
  end;
end;

procedure TFrameFicha.Edit2VMinEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:Begin
      Dados.UpdateField(Dados.Table3, 'angulo_min', Edit2VMin.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.EditBMaxEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:Begin
      Dados.UpdateField(Dados.Table3, 'birr_max', EditBMax.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.EditBMinEditingDone(Sender: TObject);
begin
    case FormMode of
    Edit:Begin
      Dados.UpdateField(Dados.Table3, 'birr_min', EditBMin.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.EditClasse_CristalinaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table4, 'classe_cristalina',
        EditClasse_Cristalina.Text, EditNomeMIneral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.EditFormulaEditingDone(Sender: TObject);
var Minerals:TStrings;
    I:Integer;
begin
  case FormMode of
    Edit:begin

    end;
    Filter:begin
      Minerals:=FrameList.ListBoxMinerals.Items;
      for I:=0 to Minerals.Count-1 do
      begin
        if Dados.MineralFiltered(Minerals[I], Dados.Table1, EditFormula.Text,
        'formula') = True then
        begin
          FrameList.ListBoxMinerals.Items.Delete(I);
        end;
      end;
    end;
  end;
end;

procedure TFrameFicha.EditH_MEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table4, 'h_m', EditH_M.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.EditNomeMineralEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin

    end;
    Filter:begin
      //Dados.MineralFiltered();
    end;
  end;
end;

procedure TFrameFicha.EditSistemaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table4, 'sistema', EditSistema.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.HeaderControl1SectionClick(
  HeaderControl: TCustomHeaderControl; Section: THeaderSection);
begin
  if (Trim(EditNomeMineral.Text) <> Emptystr) then
  begin
    case Section.Index of
      0:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
          EditNomeMineral.Text, EmptyStr);
        FormFichaEspecie.FrameImages.SelectedImage := '7';
      end;
    end;
  end
  else
  begin
    case Section.Index of
      0:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem1',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem2',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem3',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem4',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem5',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem6',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem7',
            EmptyStr, MineralogyName);
        FormFichaEspecie.FrameImages.SelectedImage:='7';
      end;
    end;
  end;
  RefreshHeaderControl(FormFichaEspecie.FrameImages.SelectedImage);
end;

procedure TFrameFicha.MemoAlteracaoChange(Sender: TObject);
begin

end;

procedure TFrameFicha.MemoAlteracaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1, 'alteracao', MemoAlteracao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoAnguloEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'angulo', MemoAngulo.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoAplicacaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1,'aplicacao', MemoAplicacao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoAssociacaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1, 'associacao', MemoAssociacao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoBirrefringenciaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'desc_birr', MemoBirrefringencia.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoBrilhoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2, 'brilho', MemoBrilho.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoClivagemEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2,'clivagem', MemoClivagem.Text,
        EditNomeMIneral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoCorEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2, 'cor', MemoCor.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoCorLaminaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'cor_lamina', MemoCorLamina.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoDiafaneidadeEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2,'diafaneidade', MemoDiafaneidade.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoDistincaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1, 'distincao', MemoDistincao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoExtincaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'extincao', MemoExtincao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoFraturaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2, 'fratura', MemoFratura.Text,
        EditNomeMIneral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoHabitoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table4, 'habito', MemoHabito.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoIndiceRefracaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'desc_refracao', MemoIndiceRefracao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoInterferenciaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'cor_interferencia', MemoInterferencia.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoLuminescenciaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2, 'luminescencia', MemoLuminescencia.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoMagnetismoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2, 'magnetismo', MemoMagnetismo.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoOcorrenciaEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table1, 'ocorrencia', MemoOcorrencia.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoRelevoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'relevo', MemoRelevo.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

        //FormFichaEspecie.FrameList.RefreshList;
    end;
  end;
end;

procedure TFrameFicha.MemoSinalElongacaoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'sinal_elongacao', MemoSinalElongacao.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoSinalOpticoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table3, 'desc_sinal_optico', MemoSinalOptico.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

procedure TFrameFicha.MemoTracoEditingDone(Sender: TObject);
begin
  case FormMode of
    Edit:begin
      Dados.UpdateField(Dados.Table2, 'traco', MemoTraco.Text,
        EditNomeMineral.Text);
    end;
    Filter:begin

    end;
  end;
end;

constructor TFrameFicha.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FormFichaEspecie.FrameImages.SelectedImage:='1';
end;

procedure TFrameFicha.AddMineralImage(strType: String; Number: Char);
begin
  OpenPictureDialog1.FileName := emptystr;
  if OpenPictureDialog1.Execute then
  if (OpenPictureDialog1.FileName <> emptystr) then
  begin
    if strType = 'minerais' then
    begin
      AddBlobFieldMineral(OpenPictureDialog1.FileName,
        Dados.Table5, 'imagem' + Number, EditNomeMineral.Text);
    end
    else
    if strType = 'mineralogia' then
    begin
      AddBlobFieldMineral(OpenPictureDialog1.FileName,
        Dados.Table6, 'imagem' + Number, MineralogyName);
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

    LabelDiafaneidade.Caption:=Lang.Diaphanousness;
    LabelSinal_Optico.Caption:=Lang.OpticalSignal;
    LabelIndice_Refracao.Caption:=Lang.RefractiveIndex;
    LabelAngulo_2V.Caption:=Lang.Angle2V;
    LabelCor_Interferencia.Caption:=Lang.InterferenceColor;
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
  EditNomeMineral.Text:='';
  EditFormula.Text:='';
  ComboboxClass.Text:='';
  ComboboxSubclass.Text:='';
  ComboboxGroup.Text:='';
  ComboboxSubgroup.Text:='';
  MemoOcorrencia.Text:='';
  MemoAssociacao.Text:='';
  MemoDistincao.Text:='';
  MemoAlteracao.Text:='';
  MemoAplicacao.Text:='';
  EditDureza.Text:='';
  EditHardMin.Text:='';
  EditHardMax.Text:='';
  EditDensMin.Text:='';
  EditDensMax.Text:='';
  EditDensidade.Text:='';
  MemoCor.Text:='';
  MemoTraco.Text:='';
  MemoBrilho.Text:='';
  MemoClivagem.Text:='';
  MemoFratura.Text:='';
  MemoMagnetismo.Text:='';
  MemoLuminescencia.Text:='';
  MemoDiafaneidade.Text:='';
  EditBMin.Text:='';
  EditBMax.Text:='';
  MemoSinalOptico.Text:='';
  MemoIndiceRefracao.Text:='';
  MemoAngulo.Text:='';
  MemoInterferencia.Text:='';
  MemoCorLamina.Text:='';
  MemoSinalElongacao.Text:='';
  MemoBirrefringencia.Text:='';
  MemoRelevo.Text:='';
  MemoRelevo.Text:='';
  MemoExtincao.Text:='';
  EditSistema.Text:='';
  EditClasse_Cristalina.Text:='';
  EditH_M.Text:='';
  MemoHabito.Text:='';
end;

procedure TFrameFicha.EditingMode(Mode: Boolean);
begin
  //to do: verificar se há campos nao incluidos
  EditFormula.Enabled := Mode;
  EditNomeMineral.Enabled := Mode;
  ComboboxClass.Enabled := Mode;
  ComboboxSubclass.Enabled := Mode;
  ComboboxGroup.Enabled := Mode;
  ComboboxSubgroup.Enabled := Mode;
  MemoOcorrencia.Enabled := Mode;
  MemoAssociacao.Enabled := Mode;
  MemoDistincao.Enabled := Mode;
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
  MemoDiafaneidade.Enabled := Mode;

  EditBMin.Enabled:=Mode;
  EditBMax.Enabled:=Mode;
  ComboBoxOpticSign.Enabled:=Mode;
  MemoSinalOptico.Enabled := Mode;
  MemoIndiceRefracao.Enabled := Mode;
  Edit2VMin.Enabled:= Mode;
  Edit2VMax.Enabled:= Mode;
  MemoAngulo.Enabled := Mode;
  MemoInterferencia.Enabled := Mode;
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
  ComboboxOpticSign.Items:= Dados.ReturnDistinctField('sinal_optico', Dados.Table3);
  ComboboxClass.Items:=Dados.ReturnDistinctField('classe', Dados.Table1);
  ComboboxSubclass.Items:=Dados.ReturnDistinctField('subclasse', Dados.Table1);
  ComboboxGroup.Items:=Dados.ReturnDistinctField('grupo', Dados.Table1);
  ComboboxSubgroup.Items:=Dados.ReturnDistinctField('subgrupo', Dados.Table1);
end;

procedure TFrameFicha.RefreshHeaderControl(ImageNumber: Char);
begin
  if (EditNomeMineral.Text<> EmptyStr) then
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem' + ImageNumber,
      EditNomeMineral.Text, EmptyStr);
  end
  else
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem' +
      ImageNumber, EmptyStr, MineralogyName);
  end;
end;

procedure TFrameFicha.RefreshImages;
begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
      EditNomeMIneral.Text, EmptyStr);
    self.ImageOptica1.Picture.Graphic:=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
        EditNomeMineral.Text, EmptyStr);
    self.ImageOptica2.Picture.Graphic:=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
        EditNomeMineral.Text, EmptyStr);
    self.ImageCristalografia1.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
      EditNomeMineral.Text, EmptyStr);
    self.ImageCristalografia2.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
      EditNomeMineral.Text, EmptyStr);
  RefreshHeaderControl(FormFichaEspecie.FrameImages.SelectedImage);
  FOrmFIchaEspecie.FrameImages.RefreshImages(EditNomeMineral.Text);
end;

procedure TFrameFicha.RemoveImage(Selected: Char);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditNomeMineral.Text) <> EmptyStr) then
      begin
        ClearBlobField(Dados.Table5, 'imagem' + Selected,
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
      end
      else
      begin
        ClearBlobField(Dados.Table6, 'imagem' + Selected,
          EmptyStr, EmptyStr, EmptyStr, MineralogyName);
      end;
      RefreshImages;
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);
  FormFichaEspecie.FrameImages.SelectedImage := '1';
end;

procedure TFrameFicha.ViewMineralProp(strName: String);
var
  SelectSQL: string;
begin
  //NomeMineral é usado no editingdone do EditNomeMineral
  MineralName := strName;
  if MineralName <> EmptyStr then
  begin
    //Mineralogy_Name.Caption:='';
    SelectSQL:= Dados.SelectSQL(Dados.Table1, strName);
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditNomeMineral.Text := Dados.TableGeneral.FieldByName['nome'];
    EditFormula.Text := Dados.TableGeneral.FieldByName['formula'];
    ComboboxClass.Text := Dados.TableGeneral.FieldByName['classe'];
    ComboboxSubclass.Text := Dados.TableGeneral.FieldByName['subclasse'];
    ComboboxGroup.Text := Dados.TableGeneral.FieldByName['grupo'];
    ComboboxSubgroup.Text := Dados.TableGeneral.FieldByName['subgrupo'];
    MemoOcorrencia.Text := Dados.TableGeneral.FieldByName['ocorrencia'];
    MemoAssociacao.Text := Dados.TableGeneral.FieldByName['associacao'];
    MemoDistincao.Text := Dados.TableGeneral.FieldByName['distincao'];
    MemoAlteracao.Text := Dados.TableGeneral.FieldByName['alteracao'];
    MemoAplicacao.Text := Dados.TableGeneral.FieldByName['aplicacao'];

    SelectSQL:= Dados.SelectSQL(Dados.Table2, EditNomeMineral.Text);
    Dados.TablePhysical := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditHardMin.Text:=Dados.TablePhysical.FieldByName['dureza_min'];
    EditHardMax.Text:=Dados.TablePhysical.FieldByName['dureza_max'];
    EditDensMin.Text:=Dados.TablePhysical.FieldByName['densidade_min'];
    EditDensMax.Text:=Dados.TablePhysical.FieldByName['densidade_max'];
    if EditHardMin.Text = EditHardMax.Text then
      EditDureza.Text := EditHardMin.Text
    else
      EditDureza.Text := EditHardMin.Text+' - '+EditHardMax.Text;
    if EditDensMin.Text = EditDensMax.Text then
      EditDensidade.Text := EditDensMin.Text
    else
      EditDensidade.Text := EditDensMin.Text + ' - ' +EditDensMax.Text;
    MemoCor.Text := Dados.TablePhysical.FieldByName['cor'];
    MemoTraco.Text := Dados.TablePhysical.FieldByName['traco'];
    MemoBrilho.Text := Dados.TablePhysical.FieldByName['brilho'];
    MemoClivagem.Text := Dados.TablePhysical.FieldByName['clivagem'];
    MemoFratura.Text := Dados.TablePhysical.FieldByName['fratura'];
    MemoMagnetismo.Text := Dados.TablePhysical.FieldByName['magnetismo'];
    MemoLuminescencia.Text := Dados.TablePhysical.FieldByName['luminescencia'];
    MemoDiafaneidade.Text := Dados.TablePhysical.FieldByName['diafaneidade'];

    SelectSQL:= Dados.SelectSQL(Dados.Table3, EditNomeMineral.Text);
    Dados.TableOptics := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditBMin.Text:=Dados.TableOptics.FIeldByName['birr_min'];
    EditBMax.Text := Dados.TableOptics.FieldByName['birr_max'];
    Edit2VMin.Text := Dados.TableOptics.FieldByName[Field2VMin];
    Edit2VMax.Text := Dados.TableOptics.FieldByName[Field2VMax];
    ComboBoxOpticSign.Text:= Dados.TableOptics.FieldByName['sinal_optico'];
    MemoSinalOptico.Text := Dados.TableOptics.FieldByName['desc_sinal_optico'];
    MemoIndiceRefracao.Text := Dados.TableOptics.FieldByName['desc_refracao'];
    MemoAngulo.Text := Dados.TableOptics.FieldByName['angulo'];
    MemoInterferencia.Text := Dados.TableOptics.FieldByName['cor_interferencia'];
    MemoCorLamina.Text := Dados.TableOptics.FieldByName['cor_lamina'];
    MemoSinalElongacao.Text := Dados.TableOptics.FieldByName['sinal_elongacao'];
    MemoBirrefringencia.Text := Dados.TableOptics.FieldByName['desc_birr'];
    MemoRelevo.Text := Dados.TableOptics.FieldByName['relevo'];
    MemoExtincao.Text := Dados.TableOptics.FieldByName['extincao'];


    SelectSQL:= Dados.SelectSQL(Dados.Table4, EditNomeMineral.Text);
    Dados.TableChryst := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditSistema.Text := Dados.TableChryst.FieldByName['sistema'];
    EditClasse_Cristalina.Text := Dados.TableChryst.FieldByName['classe_cristalina'];
    EditH_M.Text := Dados.TableChryst.FieldByName['h_m'];
    MemoHabito.Text := Dados.TableChryst.FieldByName['habito'];

    FormFichaEspecie.FrameImages.SelectedImage:='1';
    RefreshImages;
    BtnSaveMod.Enabled:=False;
  end;
end;

end.

