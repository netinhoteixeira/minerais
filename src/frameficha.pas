unit frameficha;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, ComCtrls, StdCtrls,
  Spin, Buttons, ActnList, unitblobfields, Dialogs, ExtDlgs, unitlanguage;

type

  { TFrameFicha }

  TFrameFicha = class(TFrame)
    ActionSaveMod: TAction;
    ActionList1: TActionList;
    BitBtnModifications: TBitBtn;
    BtnSaveMod: TBitBtn;
    ComboBoxSinalOptico: TComboBox;
    EditClasse: TEdit;
    EditClasse_Cristalina: TEdit;
    EditDensidade: TEdit;
    EditDureza: TEdit;
    EditFormula: TEdit;
    EditGrupo: TEdit;
    EditH_M: TEdit;
    EditNomeMineral: TEdit;
    EditSistema: TEdit;
    EditSubClasse: TEdit;
    EditSubGrupo: TEdit;
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
    LabelIndiceMax: TLabel;
    LabelIndiceMin: TLabel;
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
    OpenPictureDialog1: TOpenPictureDialog;
    PageControlFicha: TPageControl;
    PanelButtonSave: TPanel;
    PanelFicha: TPanel;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    SpinEditBMax: TFloatSpinEdit;
    SpinEditBMin: TFloatSpinEdit;
    SpinEditDensidadeMax: TFloatSpinEdit;
    SpinEditDensidadeMin: TFloatSpinEdit;
    SpinEditDurezaMax: TFloatSpinEdit;
    SpinEditDurezaMin: TFloatSpinEdit;
    SpinEditRMax: TFloatSpinEdit;
    SpinEditRMin: TFloatSpinEdit;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButtonAddImage: TToolButton;
    ToolButtonRemoveImage: TToolButton;
    procedure ActionSaveModExecute(Sender: TObject);
    procedure HeaderControl1SectionClick(HeaderControl: TCustomHeaderControl;
      Section: THeaderSection);
    procedure PageControlFichaChange(Sender: TObject);
    procedure ToolButtonAddImageClick(Sender: TObject);
    procedure ToolButtonRemoveImageClick(Sender: TObject);
  private
    { private declarations }
  public
    SelectedImage:Char;
    constructor Create(AOwner:TComponent); override;
    procedure AddMineralImage(strType:String; Number:Char);
    procedure ChangeLanguage;
    procedure ClearFields;
    procedure EditingMode(Mode:Boolean);
    procedure RefreshHeaderControl(ImageNumber:Char);
    procedure RefreshImages;
    procedure RemoveImage(Selected:Char);
    procedure ViewMineralProp(strName:String);
    { public declarations }
  end;

var MineralName:String;
    MineralogyName:String; //Usado no banco de dados de Mineralogia Sistemática

implementation
uses udatamodule;

{$R *.lfm}

{ TFrameFicha }

procedure TFrameFicha.PageControlFichaChange(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Trim(EditNomeMineral.Text) <> EmptyStr then
    begin
      case PageControlFicha.TabIndex of
        3:
        begin
          self.ImageCristalografia1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
            EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
          self.ImageCristalografia2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
            EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        end;
        4:
        begin
          self.ImagemAmpliada.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem' +
            SelectedImage, EditNomeMineral.Text,
            EmptyStr, EmptyStr, EmptyStr);
        end;
      end;
    end
    else
    begin
      self.ImagemAmpliada.Picture.Graphic :=
        SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem' +
          SelectedImage, EmptyStr,
            EmptyStr, EmptyStr, MineralogyName);
    end;
  end;
end;

procedure TFrameFicha.ToolButtonAddImageClick(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
    begin
      if (Trim(EditNomeMineral.Text) <> EmptyStr) then
        AddMineralImage(Dados.Table5, SelectedImage)
      else
        AddMineralImage(Dados.Table6,SelectedImage)
    end
    else ShowMessage(Lang.TheSelectedDatabaseIsNotValid);
  end
  else ShowMessage(Lang.NoDatabaseSelected);
end;

procedure TFrameFicha.ToolButtonRemoveImageClick(Sender: TObject);
begin
  RemoveImage(SelectedImage);
end;

procedure TFrameFicha.ActionSaveModExecute(Sender: TObject);
begin
  Dados.UpdateGeneralInfo(EditNomeMineral.Text, EditFormula.Text, EditClasse.Text,
    EditSubClasse.Text, EditGrupo.Text, EditSubGrupo.Text, MemoOcorrencia.Text,
    MemoAssociacao.Text, MemoDIstincao.Text, MemoAlteracao.Text, MemoAplicacao.Text);
  Dados.UpdatePhysicalProp(SpinEditDurezaMin.Value, SpinEditDurezaMax.Value,
    SpinEditDensidadeMin.Value, SpinEditDensidadeMax.Value, MemoCor.Text,
    MemoTraco.Text, MemoBrilho.Text, MemoClivagem.Text, MemoFratura.Text,
    MemoMagnetismo.Text, MemoLuminescencia.Text, MemoDiafaneidade.Text,
    EditNomeMineral.Text);
  Dados.UpdateOpticalProp(SpinEditRMin.Value, SpinEditRMax.Value, SpinEditBMin.Value, SpinEditBMax.Value,
    ComboboxSinalOptico.Text, MemoSinalOptico.Text, MemoIndiceRefracao.Text,
    MemoBirrefringencia.Text, MemoInterferencia.Text, MemoCorLamina.Text,
    MemoSinalElongacao.Text, MemoRelevo.Text, MemoAngulo.Text, MemoExtincao.Text,
    EditNomeMineral.Text);
  Dados.UpdateCrystallography(EditSistema.Text, EditClasse_Cristalina.Text,
    EditH_M.Text, MemoHabito.Text, EditNomeMineral.Text);
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
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
          EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
        SelectedImage := '7';
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
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='1';
      end;
      1:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem2',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='2';
      end;
      2:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem3',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='3';
      end;
      3:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem4',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='4';
      end;
      4:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem5',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='5';
      end;
      5:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem6',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='6';
      end;
      6:
      begin
        self.ImagemAmpliada.Picture.Graphic :=
          SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem7',
            EmptyStr, EmptyStr, EmptyStr, MineralogyName);
        SelectedImage:='7';
      end;
    end;
  end;
  RefreshHeaderControl(SelectedImage);
end;

constructor TFrameFicha.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SelectedImage:='1';
end;

procedure TFrameFicha.AddMineralImage(strType: String; Number: Char);
begin
  OpenPictureDialog1.FileName := emptystr;
  if OpenPictureDialog1.Execute then
  if (OpenPictureDialog1.FileName <> emptystr) then
  begin
    if strType = 'minerais' then
    begin
      AddBlobFieldMineral(Dados.DatabaseMineralFileName, OpenPictureDialog1.FileName,
        Dados.Table5, 'imagem' + Number, EditNomeMineral.Text);
    end
    else
    if strType = 'mineralogia' then
    begin
      AddBlobFieldMineral(Dados.DatabaseMineralFileName, OpenPictureDialog1.FileName,
        Dados.Table6, 'imagem' + Number, MineralogyName);
    end;
    SelectedImage := Number;
    RefreshImages;
  end;
end;

procedure TFrameFicha.ChangeLanguage;
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
end;

procedure TFrameFicha.ClearFields;
begin
  //to do: colocar os campos novos: ComboboxSinalOptico, etc
  EditNomeMineral.Text:='';
  EditFormula.Text:='';
  EditClasse.Text:='';
  EditSubClasse.Text:='';
  EditGrupo.Text:='';
  EditSubgrupo.Text:='';
  MemoOcorrencia.Text:='';
  MemoAssociacao.Text:='';
  MemoDistincao.Text:='';
  MemoAlteracao.Text:='';
  MemoAplicacao.Text:='';
  EditDureza.Text:='';
  SpinEditDurezaMin.Value:=0.;
  SpinEditDurezaMax.Value:=0.;
  SpinEditDensidadeMin.Value:=0.;
  SpinEditDensidadeMax.Value:=0.;
  EditDensidade.Text:='';
  MemoCor.Text:='';
  MemoTraco.Text:='';
  MemoBrilho.Text:='';
  MemoClivagem.Text:='';
  MemoFratura.Text:='';
  MemoMagnetismo.Text:='';
  MemoLuminescencia.Text:='';
  MemoDiafaneidade.Text:='';
  SpinEditBMin.Value:=0.;
  SpinEditBMax.Value:=0.;
  SpinEditRMin.Value:=0.;
  SpinEditRMax.Value:=0.;
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
  EditClasse.Enabled := Mode;
  EditSubClasse.Enabled := Mode;
  EditGrupo.Enabled := Mode;
  EditSubGrupo.Enabled := Mode;
  MemoOcorrencia.Enabled := Mode;
  MemoAssociacao.Enabled := Mode;
  MemoDistincao.Enabled := Mode;
  MemoAlteracao.Enabled := Mode;
  MemoAplicacao.Enabled := Mode;

  SpinEditDurezaMin.Enabled := Mode;
  SpinEditDurezaMax.Enabled := Mode;
  SpinEditDensidadeMin.Enabled := Mode;
  SpinEditDensidadeMax.Enabled := Mode;

  MemoCor.Enabled := Mode;
  MemoTraco.Enabled := Mode;
  MemoBrilho.Enabled := Mode;
  MemoClivagem.Enabled := Mode;
  MemoFratura.Enabled := Mode;
  MemoMagnetismo.Enabled := Mode;
  MemoLuminescencia.Enabled := Mode;
  MemoDiafaneidade.Enabled := Mode;

  SpinEditBMin.Enabled:=Mode;
  SpinEditBMax.Enabled:=Mode;
  SpinEditRMin.Enabled:=Mode;
  SpinEditRMax.Enabled:=Mode;
  ComboboxSinalOptico.Enabled:=Mode;
  MemoSinalOptico.Enabled := Mode;
  MemoIndiceRefracao.Enabled := Mode;
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

procedure TFrameFicha.RefreshHeaderControl(ImageNumber: Char);
begin
  if (EditNomeMineral.Text<> EmptyStr) then
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem' + ImageNumber,
      EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
  end
  else
  begin
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem' +
      ImageNumber, EmptyStr, EmptyStr, EmptyStr, MineralogyName);
  end;
  HeaderControl1.Sections.Items[0].ImageIndex:=1;
  HeaderControl1.Sections.Items[1].ImageIndex:=2;
  HeaderControl1.Sections.Items[2].ImageIndex:=3;
  HeaderControl1.Sections.Items[3].ImageIndex:=4;
  HeaderControl1.Sections.Items[4].ImageIndex:=5;
  HeaderControl1.Sections.Items[5].ImageIndex:=6;
  HeaderControl1.Sections.Items[6].ImageIndex:=7;
  Case ImageNumber of
    '1':
    begin
      HeaderControl1.Sections.Items[0].ImageIndex:=0;
    end;
    '2':
    begin
      HeaderControl1.Sections.Items[1].ImageIndex:=0;
    end;
    '3':
    begin
      HeaderControl1.Sections.Items[2].ImageIndex:=0;
    end;
    '4':
    begin
      HeaderControl1.Sections.Items[3].ImageIndex:=0;
    end;
    '5':
    begin
      HeaderControl1.Sections.Items[4].ImageIndex:=0;
    end;
    '6':
    begin
      HeaderControl1.Sections.Items[5].ImageIndex:=0;
    end;
    '7':
    begin
      HeaderControl1.Sections.Items[6].ImageIndex:=0;
    end;
  end;
end;

procedure TFrameFicha.RefreshImages;
var
  MS: TMemoryStream;
  I, ImagesNumber: integer;
begin
  if PageControlFicha.TabIndex = 4 then
    self.ImagemAmpliada.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
      EditNomeMIneral.Text, EmptyStr, EmptyStr, EmptyStr);
  if PageControlFIcha.TabIndex = 3 then
  begin
    self.ImageCristalografia1.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
      EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
    self.ImageCristalografia2.Picture.Graphic :=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
      EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  if PageControlFicha.TabIndex = 2 then
  begin
    self.ImageOptica1.Picture.Graphic:=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
        EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
    self.ImageOptica2.Picture.Graphic:=
      SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
        EditNomeMineral.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  RefreshHeaderControl(SelectedImage);
end;

procedure TFrameFicha.RemoveImage(Selected: Char);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if Dados.ChooseDatabase('mineral', Dados.DatabaseMineralFileName) then
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
  SelectedImage := '1';
end;

procedure TFrameFicha.ViewMineralProp(strName: String);
var
  SelectSQL: string;
begin
  //NomeMineral é usado no editingdone do EditNomeMineral
  MineralName := EditNomeMineral.Text;
  if MineralName <> EmptyStr then
  begin
    //Mineralogy_Name.Caption:='';
    SelectSQL:= Dados.SelectSQL(Dados.Table1, EditNomeMineral.Text);
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(SelectSQL);
    EditNomeMineral.Text := Dados.TableGeneral.FieldByName['nome'];
    EditFormula.Text := Dados.TableGeneral.FieldByName['formula'];
    EditClasse.Text := Dados.TableGeneral.FieldByName['classe'];
    EditSubClasse.Text := Dados.TableGeneral.FieldByName['subclasse'];
    EditGrupo.Text := Dados.TableGeneral.FieldByName['grupo'];
    EditSubGrupo.Text := Dados.TableGeneral.FieldByName['subgrupo'];
    MemoOcorrencia.Text := Dados.TableGeneral.FieldByName['ocorrencia'];
    MemoAssociacao.Text := Dados.TableGeneral.FieldByName['associacao'];
    MemoDistincao.Text := Dados.TableGeneral.FieldByName['distincao'];
    MemoAlteracao.Text := Dados.TableGeneral.FieldByName['alteracao'];
    MemoAplicacao.Text := Dados.TableGeneral.FieldByName['aplicacao'];

    SelectSQL:= Dados.SelectSQL(Dados.Table2, EditNomeMineral.Text);
    Dados.TablePhysical := Dados.DatabaseMinerals.GetTable(SelectSQL);
        SpinEditDurezaMin.Value:=StrToFloat(Dados.TablePhysical.FieldByName['dureza_min']);
    SpinEditDurezaMax.Value:=StrToFloat(Dados.TablePhysical.FieldByName['dureza_max']);
    SpinEditDensidadeMin.Value:=StrToFLoat(Dados.TablePhysical.FieldByName['densidade_min']);
    SpinEditDensidadeMax.Value:=StrToFLoat(Dados.TablePhysical.FieldByName['densidade_max']);
    if SpinEditDurezaMin.Value = SpinEditDurezaMax.Value then
      EditDureza.Text := FloatToStr(SpinEditDurezaMin.Value)
    else
      EditDureza.Text := FloatToStr(SpinEditDurezaMin.Value)+' - '+
      FloatToStr(SpinEditDurezaMax.Value);
    if SpinEditDensidadeMin.Value = SpinEditDensidadeMax.Value then
      EditDensidade.Text := FloatToStr(SpinEditDensidadeMin.Value)
    else
      EditDensidade.Text := FloatToStr(SpinEditDensidadeMin.Value) + ' - ' +
      FloatToStr(SpinEditDensidadeMax.Value);
    MemoCor.Text := Dados.TablePhysical.FieldByName['cor'];
    MemoTraco.Text := Dados.TablePhysical.FieldByName['traco'];
    MemoBrilho.Text := Dados.TablePhysical.FieldByName['brilho'];
    MemoClivagem.Text := Dados.TablePhysical.FieldByName['clivagem'];
    MemoFratura.Text := Dados.TablePhysical.FieldByName['fratura'];
    MemoMagnetismo.Text := Dados.TablePhysical.FieldByName['magnetismo'];
    MemoLuminescencia.Text := Dados.TablePhysical.FieldByName['luminescencia'];
    MemoDiafaneidade.Text := Dados.TablePhysical.FieldByName['difaneidade'];

    SelectSQL:= Dados.SelectSQL(Dados.Table3, EditNomeMineral.Text);
    Dados.TableOptics := Dados.DatabaseMinerals.GetTable(SelectSQL);
    SpinEditBMin.Value := StrToFloat(Dados.TableOptics.FieldByName['birr_min']);
    SpinEditBMax.Value := StrToFloat(Dados.TableOptics.FieldByName['birr_max']);
    SpinEditRMin.Value := StrToFloat(Dados.TableOptics.FieldByName['refracao_min']);
    SpinEditRMax.Value := StrToFloat(Dados.TableOptics.FieldByName['refracao_max']);
    ComboboxSinalOptico.Text:= Dados.TableOptics.FieldByName['sinal_optico'];
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

    SelectedImage:='1';
    RefreshImages;
    BtnSaveMod.Enabled:=False;
  end;
end;

end.

