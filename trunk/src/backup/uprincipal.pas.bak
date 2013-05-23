unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, ExtCtrls, ComCtrls, DbCtrls, ExtDlgs, Buttons, BGRAPanel,
  BGRAButton, RichMemo, uFormImpressao, uSelecionaBD, SQLite3mod,
  SQLite3tablemod, uBibliografia, UnitAjuda;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    BGRAPanel1: TBGRAPanel;
    BGRAPanel2: TBGRAPanel;
    BitBtnAdImagem: TBitBtn;
    BitBtnRemImagem: TBitBtn;
    DBEditDureza_Min: TDBEdit;
    DBEditDureza_Max: TDBEdit;
    DBEditDensidade_Min: TDBEdit;
    DBEditDensidade_Max: TDBEdit;
    DBMemoCor_Lamina: TDBMemo;
    DBMemoAngulo: TDBMemo;
    DBMemoBirrefringencia: TDBMemo;
    DBMemoClasse_Cristalina: TDBMemo;
    DBMemoCor_interferencia: TDBMemo;
    DBMemoDifaneidade: TDBMemo;
    DBMemoExtincao: TDBMemo;
    DBMemoHabito: TDBMemo;
    DBMemoH_M: TDBMemo;
    DBMemoIndice_Refracao: TDBMemo;
    DBMemoRelevo: TDBMemo;
    DBMemoSinal_Elongacao: TDBMemo;
    DBMemoSinal_Optico: TDBMemo;
    DBMemoMagnetismo: TDBMemo;
    DBMemoLuminescencia: TDBMemo;
    DBMemoFratura: TDBMemo;
    DBMemoCor: TDBMemo;
    DBMemoSistema: TDBMemo;
    DBMemoTraco: TDBMemo;
    DBMemoBrilho: TDBMemo;
    DBMemoClivagem: TDBMemo;
    EditDureza: TEdit;
    EditDensidade: TEdit;
    EditOcorrencia: TEdit;
    EditAssociacao: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxImagem2: TGroupBox;
    GroupBoxImagem3: TGroupBox;
    GroupBoxImagem4: TGroupBox;
    GroupBoxImagem5: TGroupBox;
    GroupBoxImagem1: TGroupBox;
    GroupBoxCristalografia: TGroupBox;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxOpticas: TGroupBox;
    GroupBoxDureza: TGroupBox;
    GroupBoxDensidade: TGroupBox;
    GroupBoxProp_Fisicas: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageCristalografia2: TImage;
    ImageAmpliada: TImage;
    ImageCristalografia1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItemAjuda: TMenuItem;
    MenuItemNormal: TMenuItem;
    MenuItemGrande: TMenuItem;
    MenuItemFonte: TMenuItem;
    MenuItemSelecionaBD: TMenuItem;
    MenuItemExcluir: TMenuItem;
    MenuItemModoEdicao: TMenuItem;
    BGRAPanelImagens: TBGRAPanel;
    BGRAPanelFiltro: TBGRAPanel;
    BGRAPanelListbox: TBGRAPanel;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxClasse: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    DBMemoClasse: TDBMemo;
    DBMemoSubclasse: TDBMemo;
    DBMemoGrupo: TDBMemo;
    DBMemoSubgrupo: TDBMemo;
    DBMemoOCorrencia: TDBMemo;
    DBMemoAssociacao: TDBMemo;
    DBMemoDistincao: TDBMemo;
    DBMemoAlteracao: TDBMemo;
    DBMemoAplicacao: TDBMemo;
    DBMemoNome: TDBMemo;
    DBMemoFormula: TDBMemo;
    EditNome: TEdit;
    EditDensidade_min: TEdit;
    EditDensidade_Max: TEdit;
    GroupBoxFiltro: TGroupBox;
    GroupBoxLista: TGroupBox;
    GroupBoxInf_Gerais: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelNome: TLabel;
    ListBoxMinerais: TListBox;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItemBD: TMenuItem;
    MenuItemOrdem: TMenuItem;
    MenuItemDureza: TMenuItem;
    MenuItemDensidade: TMenuItem;
    MenuItemNovo: TMenuItem;
    MenuItemImprimir: TMenuItem;
    MenuItemBibliografia: TMenuItem;
    MenuItemEditar: TMenuItem;
    MenuItemArquivo: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControlFicha: TPageControl;
    PanelImagem: TPanel;
    PanelFicha: TPanel;
    PopupMenuListbox: TPopupMenu;
    RichMemoFormula: TRichMemo;
    StatusBar1: TStatusBar;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetCristalografia: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    TabSheetOticas: TTabSheet;
    Timer1: TTimer;
    ToggleBox1: TToggleBox;
    procedure BitBtnAdImagemClick(Sender: TObject);
    procedure BitBtnFiltrarClick(Sender: TObject);
    procedure BitBtnRemImagemClick(Sender: TObject);
    procedure ComboBoxClasseChange(Sender: TObject);
    procedure ComboBoxDureza_maxChange(Sender: TObject);
    procedure ComboBoxDureza_minChange(Sender: TObject);
    procedure ComboBoxGrupoChange(Sender: TObject);
    procedure ComboBoxSubclasseChange(Sender: TObject);
    procedure ComboBoxSubgrupoChange(Sender: TObject);
    procedure DBMemoClasseKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoClasse_CristalinaKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoFormulaKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoGrupoKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoH_MKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoNomeEditingDone(Sender: TObject);
    procedure DBMemoNomeKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoSistemaKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoSubclasseKeyPress(Sender: TObject; var Key: char);
    procedure DBMemoSubgrupoKeyPress(Sender: TObject; var Key: char);
    procedure EditAssociacaoEditingDone(Sender: TObject);
    procedure EditDensidadeClick(Sender: TObject);
    procedure EditDensidade_MaxEditingDone(Sender: TObject);
    procedure EditDensidade_minEditingDone(Sender: TObject);
    procedure EditDurezaClick(Sender: TObject);
    procedure EditNomeEditingDone(Sender: TObject);
    procedure EditOcorrenciaEditingDone(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GroupBoxInf_GeraisClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image5DblClick(Sender: TObject);
    procedure ImageCristalografia1Click(Sender: TObject);
    procedure ImageCristalografia1DblClick(Sender: TObject);
    procedure ImageCristalografia2Click(Sender: TObject);
    procedure ImageCristalografia2DblClick(Sender: TObject);
    procedure ListBoxMineraisClick(Sender: TObject);
    procedure ListBoxMineraisDblClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItemAjudaClick(Sender: TObject);
    procedure MenuItemBibliografiaClick(Sender: TObject);
    procedure MenuItemDurezaClick(Sender: TObject);
    procedure MenuItemExcluirClick(Sender: TObject);
    procedure MenuItemImprimirClick(Sender: TObject);
    procedure MenuItemModoEdicaoClick(Sender: TObject);
    procedure MenuItemNormalClick(Sender: TObject);
    procedure MenuItemNovoClick(Sender: TObject);
    procedure MenuItemSelecionaBDClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure Preenche_Lista;
    procedure Preenche_Classes;
    procedure Preenche_SubClasses;
    procedure Preenche_Grupos;
    procedure Preenche_SubGrupos;
    function Filtro_Nome:boolean;
    function Filtro_Ocorrencia:boolean;
    function Filtro_Associacao:Boolean;
    function Nome_Didatico: String;
    procedure AtualizaRichMemo;
    procedure LimpaRichMemo;
    procedure Barra_Status;
    procedure EditaDD;
    procedure LimpaDD;
    procedure Adiciona_Imagem(num:Char);
    procedure Adiciona_Cristalografia(num:char);
    procedure AtualizaImagem;
    procedure SelecionaImagem(num:char);
    procedure ProcuraMineral;
    procedure MemoryStreamParaImagem;
    { private declarations }
  public
    { public declarations }
  end;

  const
    lista_formatos:string ='All Files| *.jpg; *.jpeg;'; //ver se *.mpeg é compatível
    grande: integer = 13;
    normal: integer = 9;



var
  FormPrincipal: TFormPrincipal;
  Nome_Mineral:string;
  Imagem_Selecionada:Char;
  Tipo: String;

  ms:TMemoryStream;
  pic:TJPEGImage;

  sldb: TSQLiteDatabase;
  sltb: TSQLiteTable;
  sltb2:TSQLiteTable;
  slst: Tsqlitestmt;

  //variaveis usadas para nao preencher a lista desnecessariamente://transformar em variáveis locais
  den_min, den_max, ocorrencia, associacao: string;
  //Usado pelo RichMemo
  fonte, fontenormal, fonte2:TFontParams;

implementation
uses udatamodule;
{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.ComboBoxClasseChange(Sender: TObject);
begin
  Preenche_SubClasses;
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxGrupoChange(Sender: TObject);
begin
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxSubclasseChange(Sender: TObject);
begin
  Preenche_Grupos;
  Preenche_SubGrupos;
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxSubgrupoChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.DBMemoClasseKeyPress(Sender: TObject; var Key: char);
var i:integer; especie: String;
begin
  if (Key = #13) then
  begin
  Especie:=ListBoxMinerais.GetSelectedText;
  i:=ListBoxMinerais.Items.IndexOf(especie);
  preenche_Lista;
  ListBoxMinerais.Selected[i]:=True;
  Dados.Sqlite3DatasetGeral.Open;
  Dados.Sqlite3DatasetGeral.First;
  if  (Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString <> Especie) then
  repeat
        Dados.Sqlite3DatasetGeral.Next();
  Until (Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString = Especie);
  AtualizaRichMemo;
  EditaDD;
  Preenche_Classes;
  //sltb:=sldb.GetTable('UPDATE minerais SET classe = "'+Copy(DBMemoClasse.Text, 0, Length(DBMemoClasse.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  end;
end;

procedure TFormPrincipal.DBMemoClasse_CristalinaKeyPress(Sender: TObject;
  var Key: char);
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET classe_cristalina = "'+Copy(DBMemoClasse_Cristalina.Text, 0, Length(DBMemoClasse_Cristalina.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  end;
end;

procedure TFormPrincipal.DBMemoFormulaKeyPress(Sender: TObject; var Key: char);
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE formula SET formula = "'+Copy(DBMemoFormula.Text, 0, Length(DBMemoFormula.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  end;
end;

procedure TFormPrincipal.DBMemoGrupoKeyPress(Sender: TObject; var Key: char);
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET grupo = "'+Copy(DBMemoGrupo.Text, 0, Length(DBMemoGrupo.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  Preenche_Grupos;
  end;
end;

procedure TFormPrincipal.DBMemoH_MKeyPress(Sender: TObject; var Key: char);
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET h_m = "'+Copy(DBMemoH_M.Text, 0, Length(DBMemoH_M.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  end;
end;

procedure TFormPrincipal.ComboBoxDureza_maxChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.ComboBoxDureza_minChange(Sender: TObject);
begin
  Preenche_Lista;
end;

procedure TFormPrincipal.BitBtnFiltrarClick(Sender: TObject);
begin
     Preenche_Lista;
end;

procedure TFormPrincipal.BitBtnRemImagemClick(Sender: TObject);
begin     ////////mudar banco de dados, imagem5 eimagem 7 no lugar de imagemcristalografica 1 e 2
  sldb.ExecSQL('Update minerais set Imagem'+Imagem_selecionada+' = null');
  AtualizaImagem;
end;

procedure TFormPrincipal.BitBtnAdImagemClick(Sender: TObject);
begin
     if (ListBoxMinerais.GetSelectedText = EmptyStr) then
     Begin
          if (Imagem_Selecionada = '6') then
          ShowMessage('Só é possível adicionar Imagens Cristalográficas se tiver algum mineral selecionado na lista')
          else
          if (Imagem_Selecionada = '7') then
          ShowMessage('Só é possível adicionar Imagens Cristalográficas se tiver algum mineral selecionado na lista')
          else
          Adiciona_Imagem(Imagem_Selecionada);
     end
     else
     Begin
          if Imagem_Selecionada = '6' then Adiciona_Cristalografia('1')
          else
          if Imagem_Selecionada = '7' then Adiciona_Cristalografia('2')
          else
          Adiciona_Imagem(Imagem_Selecionada);
     end;
end;

procedure TFormPrincipal.DBMemoNomeEditingDone(Sender: TObject);
var novo, velho:integer;
begin
  velho:=ListboxMinerais.items.IndexOf(ListboxMinerais.getselectedtext);
  novo:=ListboxMinerais.Items.Add(dados.SQLite3datasetgeral.FieldByName('nome').asstring);
  ListboxMinerais.items.Exchange(novo, velho);
  ListboxMinerais.Items.Delete(novo);
end;

procedure TFormPrincipal.DBMemoNomeKeyPress(Sender: TObject; var Key: char);
var aux:Integer;
begin
  aux:=ListboxMinerais.items.IndexOf(ListboxMinerais.getselectedtext);
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET nome = "'+Copy(DBMemoNome.Text, 0, Length(DBMemoNome.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  Preenche_Lista;
  end;
  ProcuraMineral;
  ListBoxMinerais.Selected[aux]:=True;
end;

procedure TFormPrincipal.DBMemoSistemaKeyPress(Sender: TObject; var Key: char);
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET sistema = "'+Copy(DBMemoSistema.Text, 0, Length(DBMemoSistema.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  end;
end;

procedure TFormPrincipal.DBMemoSubclasseKeyPress(Sender: TObject; var Key: char
  );
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET subclasse = "'+Copy(DBMemoSubClasse.Text, 0, Length(DBMemoSubClasse.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  Preenche_SubClasses;
  end;
end;

procedure TFormPrincipal.DBMemoSubgrupoKeyPress(Sender: TObject; var Key: char);
begin
  if (Key = #13) then
  begin
  sltb:=sldb.GetTable('UPDATE minerais SET subgrupo = "'+Copy(DBMemoSubGrupo.Text, 0, Length(DBMemoSubGrupo.Text))+'" WHERE nome = "'+DBMemoNome.Text+'";');
  Preenche_SubGrupos;
  end;
end;

procedure TFormPrincipal.EditAssociacaoEditingDone(Sender: TObject);
begin
  if (EditAssociacao.Text <> Associacao) then
  Preenche_Lista;
  Associacao:=EditAssociacao.Text;
end;

procedure TFormPrincipal.EditDensidadeClick(Sender: TObject);
begin
  if (GroupBoxDensidade.visible) then GroupBoxDensidade.Visible:=false
  else GroupBoxDensidade.Visible:=true;
end;

procedure TFormPrincipal.EditDensidade_MaxEditingDone(Sender: TObject);
begin
  if (EditDensidade_Max.Text <> Den_Max) then
  Preenche_Lista;
  Den_Max:=EditDensidade_Max.Text;
end;

procedure TFormPrincipal.EditDensidade_minEditingDone(Sender: TObject);
begin
  if (EditDensidade_Min.Text <> Den_Min) then
  Preenche_Lista;
  Den_Min:=EditDensidade_Min.Text;
end;

procedure TFormPrincipal.EditDurezaClick(Sender: TObject);
begin
  if (GroupBoxDureza.visible) then GroupBoxDureza.Visible:=false
  else GroupBoxDureza.Visible:=true;
end;

procedure TFormPrincipal.EditNomeEditingDone(Sender: TObject);
var NomeEdit:String;
begin
  if (NomeEdit <> EditNome.Text) then
  Preenche_lista;
  NomeEdit:=EditNome.Text;
  ProcuraMineral;
end;

procedure TFormPrincipal.EditOcorrenciaEditingDone(Sender: TObject);
begin
  if (EditOcorrencia.Text <> Ocorrencia) then
  Preenche_Lista;
  Ocorrencia:=EditOcorrencia.Text;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  sldb.Free;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Padrao: TextFile;
    BancoDados, diretorio:String;
begin
     Fonte.Style := [fsitalic];
     Fonte2.Style := [];
     FonteNormal.style:=[fsbold];
    //fonte.Color := 1;
    //fonte2.Color := 1;
   //FonteNormal.Color := 1;



  Tipo:=EmptyStr;//ver se precisa, feito para criar o campo geral no inicio e carregar as imagens iniciais
  Imagem_Selecionada:='1';
  limpaDD;
  LimpaRichMemo;
  Application.CreateForm(TFormSelecionaBD, FormSelecionaBD);
  Diretorio:=GetCurrentDir+'\Data\bd.dat';
  if FileExists(Diretorio) then
  begin
    AssignFile(Padrao, Diretorio);
    Reset(Padrao);
    While Not EOF(Padrao) do
    Readln(Padrao, BancoDados);
    if FileExists(BancoDados) then
    begin
    Dados.DeterminaBD(BancoDados);
    sldb := TSQLiteDatabase.Create(BancoDados);
    //acho q nao precisa definir a tabela aqui//
    //sltb := sldb.GetTable('SELECT imagem1,imagem2,imagem3, imagem4,imagem5,imagemCristalografia1, ImagemCristalografia2 FROM minerais');
    //sltb2:= sldb.GetTable('SELECT campo, imagem1, imagem2, imagem3, imagem4, imagem5 FROM mineralogia');
    Preenche_Classes;
    Preenche_SubClasses;
    Preenche_Grupos;
    Preenche_SubGrupos;
    Preenche_Lista;
    CloseFile(Padrao);
    end
    else
    begin
       CloseFile(Padrao);
       FormSelecionaBD.Show;
       Timer1.Enabled:=true;
    end;
  end
  else
  begin
    AssignFile(Padrao, Diretorio);
    ReWrite(Padrao);
    CloseFile(Padrao);
    FormSelecionaBD.Show;
  end;
  openpicturedialog1.Filter:=lista_formatos;
end;

procedure TFormPrincipal.GroupBoxInf_GeraisClick(Sender: TObject);
begin

end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
  if (FormSelecionaBD.Visible = False) then
  begin
    Timer1.Enabled:=False;
    if (FileExists(Dados.Sqlite3DatasetGeral.FileName)) then
    begin
    sldb := TSQLiteDatabase.Create(Dados.Sqlite3DatasetGeral.FileName);
    Preenche_Classes;
    Preenche_SubClasses;
    Preenche_Grupos;
    Preenche_SubGrupos;
    Preenche_Lista;
    end;
  end;
end;

procedure TFormPrincipal.ListboxMineraisClick(Sender: TObject);
var aux:integer;
begin
   limparichmemo;
   ProcuraMineral;
end;

procedure TFormPrincipal.ListBoxMineraisDblClick(Sender: TObject);
begin
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin
     ListBoxMinerais.Items.Delete(ListBoxMinerais.ItemIndex);
  end;
end;

procedure TFormPrincipal.MenuItem1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.MenuItemAjudaClick(Sender: TObject);
begin
  FormAjuda.Show;
end;

procedure TFormPrincipal.MenuItemBibliografiaClick(Sender: TObject);
begin
  FormBibliografia.Show;
end;

procedure TFormPrincipal.MenuItemDurezaClick(Sender: TObject);
begin
  if (MenuItemDureza.Checked) Then
  begin
     MenuItemDureza.Checked:=False;
     MenuItemDensidade.Checked:=True;
  end
  else
  Begin
     MenuItemDureza.Checked:=True;
     MenuItemDensidade.Checked:=False;
  end;
  Preenche_Lista;
end;

procedure TFormPrincipal.MenuItemExcluirClick(Sender: TObject);
var nome_exclusao:string; //esta var pode ser eliminada
begin
  if (ListboxMinerais.GetSelectedText = emptystr) then
  begin
     showmessage('Não há mineral selecionado');
  end
  else
  begin
  nome_exclusao:=ListboxMinerais.GetSelectedText;
  if (dados.SQLite3DatasetGeral.FieldByName('nome').asstring <> ListboxMinerais.GetSelectedText) then
  begin
     dados.SQLite3DatasetGeral.first;
     repeat
      dados.SQLite3DatasetGeral.Next;
     until (dados.SQLite3DatasetGeral.FieldByName('nome').AsString = nome_exclusao);
  end;
  // fazer form de exclusão     08/12
  if (QuestionDlg('Confirmação', 'Deseja realmente remover "' + UpCase(nome_exclusao) + '"?',
       mtConfirmation, [mrNo, mrYes], 0) = mrYes) then
    begin
      dados.SQLite3DatasetGeral.Delete();
      dados.SQLite3DatasetGeral.ApplyUpdates;
      Preenche_Lista;
      AtualizaImagem;
      Barra_Status;
    end;
  end;
end;

procedure TFormPrincipal.MenuItemImprimirClick(Sender: TObject);
          function strNome(i:integer):string;
          begin
            if i>=1 then
            result:=' nome="'+ListBoxMinerais.Items.Strings[i]+'" or '
            else
            if i=0 then
            result:=' nome="'+ListBoxMinerais.Items.Strings[i]+'" );';
          end;
var i: Integer;
begin
     Dados.Sqlite3DatasetPrinter.SQL:='SELECT * FROM minerais WHERE(';
     for i:=(ListBoxMinerais.Items.Count-1)  DownTo 0 do
     begin
     Dados.Sqlite3DatasetPrinter.SQL:=
     Dados.Sqlite3DatasetPrinter.SQL+strNome(i);
     end;
     FormImpressao.Show;
end;

procedure TFormPrincipal.MenuItemModoEdicaoClick(Sender: TObject);
begin
   if (not dados.SQLite3DatasetGeral.Active) then
  begin
     {dados.SQLite3DatasetGeral.Open();
     dados.SQLite3DatasetGeral.clearfields;}
  end
  else
  dados.SQLite3DatasetGeral.applyupdates();

  if (MenuItemModoEdicao.checked) then
  begin
       statusbar1.Panels.Items[1].Text:='';
      image1.Hint := '';
      image2.Hint := '';
      image3.Hint := '';
      image4.Hint := '';
      image5.Hint := '';

      ImageCristalografia1.Hint := '';
      ImageCristalografia2.Hint := '';

      richmemoformula.visible:=true;
      dbmemoformula.visible:=false;

      GroupBoxDureza.enabled:=false;
      GroupBoxDensidade.enabled:=false;
      MenuItemModoEdicao.checked:=false;
      dbmemonome.ReadOnly := true;
      dbmemoocorrencia.ReadOnly := true;
      dbmemoassociacao.ReadOnly := true;
      dbmemoclasse.ReadOnly := true;
      dbmemosubclasse.ReadOnly := true;
      dbmemogrupo.ReadOnly := true;
      dbmemoSubgrupo.ReadOnly := true;
      dbmemoAplicacao.ReadOnly := true;
      dbmemoAlteracao.ReadOnly := true;
      dbmemoDistincao.readonly:=true;
      dbmemoCor.ReadOnly := true;
      dbmemoTraco.ReadOnly := true;
      dbmemoclivagem.ReadOnly := true;
      dbmemofratura.ReadOnly := true;
      dbmemoBrilho.ReadOnly := true;
      dbmemoMagnetismo.ReadOnly := true;
      dbmemoLuminescencia.ReadOnly := true;
      dbmemoDifaneidade.ReadOnly := true;
      dbmemoSinal_optico.ReadOnly := true;
      dbmemoIndice_Refracao.ReadOnly := true;
      dbmemoAngulo.ReadOnly := true;
      dbmemoCor_Interferencia.ReadOnly := true;
      dbmemoSinal_Elongacao.ReadOnly := true;
      dbmemoBirrefringencia.ReadOnly := true;
      dbmemoRelevo.ReadOnly := true;
      dbmemoExtincao.ReadOnly := true;
      dbmemoSistema.ReadOnly := true;
      dbmemoH_M.ReadOnly := true;
      DBMemoHabito.ReadOnly := true;
      dbmemoClasse_Cristalina.ReadOnly := true;
      DBMemoCor_Lamina.ReadOnly:=true;
  end
  else
  begin

   statusbar1.Panels.Items[1].Text:='Modo de Edição';

   image1.Hint := 'Duplo clique para alterar';
   image2.Hint := 'Duplo clique para alterar';
   image3.Hint := 'Duplo clique para alterar';
   image4.Hint := 'Duplo clique para alterar';
   image5.Hint := 'Duplo clique para alterar';
   ImageCristalografia1.Hint := 'Duplo clique para alterar';
   ImageCristalografia2.Hint := 'Duplo clique para alterar';

   GroupBoxDureza.enabled:=true;
   GroupBoxDensidade.enabled:=true;

   richmemoformula.visible:=false;
   dbmemoformula.visible:=true;

   MenuItemModoEdicao.checked:=true;
   dbmemonome.ReadOnly := false;
   dbmemoocorrencia.ReadOnly := false;
   dbmemoassociacao.ReadOnly := false;
   dbmemoclasse.ReadOnly := false;
   dbmemosubclasse.ReadOnly := false;
   dbmemogrupo.ReadOnly := false;
   dbmemoSubgrupo.ReadOnly := false;
   dbmemoaplicacao.ReadOnly := false;
   dbmemoalteracao.ReadOnly := false;
   dbmemodistincao.readonly:=false;
   dbmemocor.ReadOnly := false;
   dbmemoTraco.ReadOnly := false;
   dbmemoClivagem.ReadOnly := false;
   dbmemoFratura.ReadOnly := false;
   dbmemoBrilho.ReadOnly := false;
   dbmemoMagnetismo.ReadOnly := false;
   dbmemoLuminescencia.ReadOnly := false;
   dbmemoDifaneidade.ReadOnly := false;
   dbmemoSinal_Optico.ReadOnly := false;
   dbmemoIndice_Refracao.ReadOnly := false;
   dbmemoAngulo.ReadOnly := false;
   dbmemoCor_Interferencia.ReadOnly := false;
   dbmemoSinal_Elongacao.ReadOnly := false;
   dbmemoBirrefringencia.ReadOnly := false;
   dbmemoRelevo.ReadOnly := false;
   dbmemoExtincao.ReadOnly := false;
   dbmemoSistema.ReadOnly := false;
   dbmemoH_M.ReadOnly := false;
   DBMemoHabito.ReadOnly := false;
   dbmemoClasse_Cristalina.ReadOnly := false;
   DBMemoCor_Lamina.ReadOnly:=false;
  end;
end;

procedure TFormPrincipal.MenuItemNormalClick(Sender: TObject);
begin
  if (MenuItemNormal.Checked) then
  Begin
       //MenuItemNormal.Checked:=False;
       //MenuItemGrande.Checked:=True;
       PanelFicha.Font.Size:=Grande;
       GroupBoxInf_Gerais.Font.Size:=grande;
       GroupBoxProp_Fisicas.Font.Size:=grande;
       GroupBoxOpticas.Font.Size:=grande;
       GroupBoxCristalografia.Font.Size:=grande;
       GroupBoxLista.Font.Size:=grande;
  end
  else
  Begin
       //MenuItemNormal.Checked:=True;
      // MenuItemGrande.Checked:=False;
       PanelFicha.Font.Size:=Normal;
       GroupBoxInf_Gerais.Font.Size:=normal;
       GroupBoxProp_Fisicas.Font.Size:=normal;
       GroupBoxOpticas.Font.Size:=normal;
       GroupBoxCristalografia.Font.Size:=normal;
       GroupBoxLista.Font.Size:=normal;
  end;
      AtualizaRichMemo;
end;

procedure TFormPrincipal.MenuItemNovoClick(Sender: TObject);
var indice:integer;  SQL, SQL2: String;
begin

  LimpaDD;
  LimpaRichMemo;

  if (EditNome.Text<>EmptyStr) then
  begin
       sltb:=sldb.GetTable('SELECT nome FROM minerais WHERE (nome = "'+EditNome.Text+'");');
       if (sltb.Count > 0 ) then
       begin
            ShowMessage('Mineral já existente no Banco de Dados');
       end
       else
       Begin
            Try
            SQL:='INSERT INTO minerais (nome , dureza_min, dureza_max, densidade_min, densidade_max ) VALUES ';
            SQL:=SQL + ' ("'+EditNome.Text+'", "'+ComboBoxDureza_min.Text+'", "'+ComboBoxDureza_max.Text+'", "'+EditDensidade_min.Text+'", "'+EditDensidade_max.Text+'");';
            SQL2:='UPDATE minerais SET classe="'+ComboBoxClasse.Text+'", subclasse="'+ComboboxSubClasse.Text+'",';
            SQL2:=SQL2+'grupo="'+ComboBoxGrupo.Text+'",subgrupo="'+ComboBoxSubgrupo.Text+'" WHERE nome = "'+EditNome.Text+'";';
            finally
            sldb.BeginTransaction;
            sldb.ExecSQL(SQL);
            sldb.ExecSQL(SQL2);
            sldb.Commit;
            end;
            indice:=ListBoxMinerais.Items.Add(EditNome.Text);
            ListboxMinerais.Selected[indice]:=true;
       end;
  end
  else
  Begin
       sltb:=sldb.GetTable('SELECT nome FROM minerais WHERE (nome = "Novo Mineral");');
       if (sltb.Count > 0 ) then
       begin
            ShowMessage('Mineral já existente no Banco de Dados');
       end
       else
       Begin
            Try
            SQL:='INSERT INTO minerais (nome , dureza_min, dureza_max, densidade_min, densidade_max ) VALUES ';
            SQL:=SQL + ' ("Novo Mineral", "'+ComboBoxDureza_min.Text+'", "'+ComboBoxDureza_max.Text+'", "'+EditDensidade_min.Text+'", "'+EditDensidade_max.Text+'");';
            SQL2:='UPDATE minerais SET classe="'+ComboBoxClasse.Text+'", subclasse="'+ComboboxSubClasse.Text+'",';
            SQL2:=SQL2+'grupo="'+ComboBoxGrupo.Text+'",subgrupo="'+ComboBoxSubgrupo.Text+'" WHERE nome = "Novo Mineral";';
            finally
            sldb.BeginTransaction;
            sldb.ExecSQL(SQL);
            sldb.ExecSQL(SQL2);
            sldb.Commit;
            end;
            indice:=ListBoxMinerais.Items.Add('Novo Mineral');
            ListboxMinerais.Selected[indice]:=true;
       end;
  end;
  AtualizaImagem;
  barra_status;
end;

procedure TFormPrincipal.MenuItemSelecionaBDClick(Sender: TObject);
begin
     FormSelecionaBD.Show;
     Timer1.Enabled:=True;
end;

procedure TFormPrincipal.preenche_lista;
begin
   limparichmemo;
   ListboxMinerais.clear();
   limpaDD;
   if (Dados.SQLite3DatasetGeral.Active) then Dados.SQLite3DatasetGeral.Close();

   if (ComboboxClasse.text = emptystr) then
   begin
        if (ComboboxSubclasse.text = emptystr) then
        begin
             if (ComboboxGrupo.text = emptystr) then
             begin
                  if (ComboboxSubgrupo.text = emptystr) then
                  begin     //nenhum combobox selecionado   1
                       if (MenuItemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                       else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                  end
                  else
                  begin  //combobox subgrupos    2
                      if (MenuItemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                      else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                  end;
             end
             else
             begin
                  if (ComboboxSubgrupo.text = emptystr) then
                  begin     // combobox grupos   3
                       if (menuItemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                       else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                  end
                  else
                  begin     //combobox grupo e subgrupo   4
                       if (MenuItemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                       else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                  end;
             end;
        end
        else
        begin
             if (ComboboxGrupo.text = emptystr) then
             begin
                   if (ComboboxSubgrupo.text = emptystr) then
                   begin           //combobox subclasse 5
                       if (MenuItemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                       else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))'
                   end
                   else
                   begin  // combobox subclasse e subgrupo  6
                      if (MenuITemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                      else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                   end;
             end
             else
             begin
                  if (ComboboxSubgrupo.text = emptystr) then
                  begin   //combobox subclasse e grupo   7
                      if (MenuItemDureza.Checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and grupo ="'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                      else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                  end
                  else
                  begin   //subclasse grupo subgrupo      8
                       if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                  else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                  end;
             end;
        end;
   end
   else
   begin
        if (ComboboxSubclasse.text = emptystr) then
        begin
            if (ComboboxGrupo.text = emptystr) then
            begin
                if (ComboboxSubgrupo.text = emptystr) then
                begin     //classe      9
                     if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                  else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                end
                else    //classe subgrupos    10
                begin
                    if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                  else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                end;
            end
            else
            begin      //classe grupos    11
                if (ComboboxSubgrupo.text = emptystr) then
                begin
                     if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                     else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                end
                else    //classe grupo subgrupo     12
                begin
                    if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                                      else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                end;
            end;
        end
        else
        begin
            if (ComboboxGrupo.text = emptystr) then
            begin
                 if (ComboboxSubgrupo.text = emptystr) then
                 begin   //classe subclasse     13
                     if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                     else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                 end
                 else
                 begin    //classe subclasse subgrupo   14
                     if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                     else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                 end;
            end
            else
            begin   //classe subclasse grupo      15
                if (ComboboxSubgrupo.text = emptystr) then
                begin
                    if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                     else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                end
                else    //classe subclasse grupo subgrupo    16
                begin
                    if (MenuItemDureza.checked) then
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(dureza_max+1))'
                     else
Dados.SQLite3DatasetGeral.SQL:='SELECT * FROM minerais WHERE (classe = "'+ComboboxClasse.text+'" and subclasse = "'+ComboboxSubclasse.text+'" and grupo = "'+ComboboxGrupo.text+'" and subgrupo = "'+ComboboxSubgrupo.text+'" and dureza_min >= "'+comboboxDureza_min.text+'" and dureza_max <= "'+comboboxdureza_max.text+'" and densidade_min >= "'+editDensidade_min.text+'" and densidade_max<= "'+editDensidade_max.text+'") ORDER BY (1/(densidade_max+1))';
                end;
            end;
        end;

   end;
   if FileExists(Dados.SQLite3DatasetGeral.FileName) then ///precisa?
   Begin
   Dados.SQLite3DatasetGeral.open();
   Dados.SQLite3DatasetGeral.first();
   while (not Dados.SQLite3DatasetGeral.EOF) do
   begin
    if (Length(Trim(Dados.SQLite3DatasetGeral.Fields[0].AsString)) > 0) then
    begin
       if Filtro_Nome = false then
       if Filtro_Ocorrencia = false then
       if Filtro_Associacao = false then
      ListboxMinerais.Items.add(Dados.SQLite3DatasetGeral.FieldByName('nome').AsString);    end;
    Dados.SQLite3DatasetGeral.Next();
   end;
   Dados.SQLite3DatasetGeral.Close;
   Barra_status;
   AtualizaImagem;
   end;
end;

procedure TFormPrincipal.Preenche_Classes;
begin
  ComboBoxClasse.Items.add(emptystr);
    Dados.SQLite3DatasetComboBox.SQL:='SELECT DISTINCT classe FROM minerais ORDER BY classe ASC';
    Dados.SQLite3DatasetComboBox.Open();
    Dados.SQLite3DatasetComboBox.First;
    While (not Dados.SQLite3DatasetComboBox.Eof) do
    begin
        if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].Asstring)) > 0) then
        begin
            ComboBoxClasse.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].Asstring);
        end;
        dados.SQLite3DatasetComboBox.Next();
    end;
    dados.SQLite3DatasetComboBox.close();
end;

procedure TFormPrincipal.Preenche_SubClasses;
begin
  if (ComboBoxClasse.text= emptystr) then
     begin
          dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subclasse FROM minerais ORDER BY subclasse ASC';
     end
     else
     begin
        dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subclasse FROM minerais WHERE( classe = "'+ComboBoxClasse.Text+'") ORDER BY subclasse ASC';
     end;
     ComboBoxSubClasse.clear();
     ComboBoxSubClasse.Items.add(emptystr);
     dados.SQLite3DatasetComboBox.Open;
     Dados.SQLite3DatasetComboBox.First;
    While (not Dados.SQLite3DatasetComboBox.Eof) do
    begin
        if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].Asstring)) > 0) then
        begin
            ComboBoxSubClasse.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].Asstring);
        end;
        dados.SQLite3DatasetComboBox.Next();
    end;
     dados.SQLite3DatasetComboBox.close;
end;

procedure TFormPrincipal.Preenche_Grupos;
begin
  if (ComboBoxClasse.text = emptystr) then
    begin
         if (ComboBoxSubClasse.text = emptystr) then
         begin
             dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT grupo FROM minerais ORDER BY grupo ASC';
         end
         else
         begin
            dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT grupo FROM minerais WHERE (subclasse = "'+ComboBoxSubClasse.Text+'")ORDER BY grupo ASC';
         end;
    end
    else
    begin
         if (ComboBoxSubClasse.text = emptystr) then
         begin
            dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT grupo from minerais WHERE (classe = "'+ComboBoxClasse.Text+'") ORDER BY grupo ASC';
         end
         else
         begin
            dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT grupo FROM minerais WHERE( classe = "'+ComboBoxClasse.Text+'" and subclasse = "'+ComboBoxSubClasse.Text+'")ORDER BY grupo ASC';
         end;
    end;
    ComboBoxGrupo.clear();
    ComboBoxGrupo.Items.add(emptystr);
    Dados.SQLite3DatasetComboBox.Open();
    Dados.SQLite3DatasetComboBox.First;
    While (not Dados.SQLite3DatasetComboBox.Eof) do
    begin
        if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].Asstring)) > 0) then
        begin
            ComboBoxGrupo.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].Asstring);
        end;
        dados.SQLite3DatasetComboBox.Next();
    end;
    dados.SQLite3DatasetComboBox.close;
end;

procedure TFormPrincipal.Preenche_SubGrupos;
begin
  if ComboBoxClasse.text = emptystr then
    begin
       if (ComboBoxSubClasse.text = emptystr) then
       begin
           if (ComboBoxGrupo.text = emptystr) then
           begin
               dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subgrupo FROM minerais ORDER BY subgrupo ASC';
           end
           else
           begin
               dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subgrupo FROM minerais WHERE(grupo = "'+ComboBoxGrupo.Text+'") ORDER BY subgrupo ASC';
           end;
       end
       else
       begin
           if (ComboBoxGrupo.text = emptystr) then
           begin
            dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subgrupo FROM minerais WHERE(subclasse = "'+ComboBoxSubClasse.Text+'") ORDER BY subgrupo ASC'
           end
           else
           begin
            dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subgrupo FROM minerais WHERE(subclasse = "'+ComboBoxSubclasse.Text+'" and grupo = "'+ComboBoxGrupo.Text+'") ORDER BY subgrupo ASC';
           end;
       end;
    end
    else
    begin
         if (ComboBoxSubClasse.text = emptystr) then
         begin
              if (ComboBoxGrupo.text = emptystr) then
              begin
                 dados.SQLite3DatasetComboBox.sql:= 'SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "'+ComboBoxClasse.Text+'") ORDER BY subgrupo ASC';
              end
              else
              begin
                 dados.SQLite3DatasetComboBox.sql:= 'SELECT DISTINCT subgrupo FROM minerais WHERE(classe= "'+ComboBoxClasse.Text+'" and grupo= "'+ComboBoxGrupo.Text+'") ORDER BY subgrupo ASC';
              end;
         end
         else
         begin
              if (ComboBoxGrupo.text = emptystr) then
              begin
                 dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "'+ComboBoxClasse.Text+'" and subclasse = "'+ComboBoxSubClasse.Text+'") ORDER BY subgrupo ASC';
              end
              else
              begin
                 dados.SQLite3DatasetComboBox.sql:='SELECT DISTINCT subgrupo FROM minerais WHERE(classe = "'+ComboBoxClasse.Text+'" and subclasse = "'+ComboBoxSubClasse.Text+'" and grupo = "'+ComboBoxGrupo.Text+'")ORDER BY subgrupo ASC';
              end;
         end;
    end;
    ComboBoxSubGrupo.clear();
    ComboBoxSubGrupo.Items.add(emptystr);
    Dados.SQLite3DatasetComboBox.Open();
    Dados.SQLite3DatasetComboBox.First;
    While (not Dados.SQLite3DatasetComboBox.Eof) do
    begin
        if (Length(Trim(Dados.SQLite3DatasetComboBox.Fields[0].Asstring)) > 0) then
        begin
            ComboBoxSubGrupo.Items.Add(dados.SQLite3DatasetComboBox.Fields[0].Asstring);
        end;
        dados.SQLite3DatasetComboBox.Next();
    end;
    dados.SQLite3DatasetComboBox.Close;
end;

procedure TFormPrincipal.AtualizaRichMemo;
var aux:string; i,j:integer;
begin
  if (MenuItemNormal.Checked) then
  begin
       Fonte.Size:=Normal;
       Fonte2.Size:=Normal;
       FonteNormal.Size:=Normal;
  end
  else
  begin
       Fonte.Size:=Grande;
       Fonte2.Size:=Grande;
       FonteNormal.Size:=Grande;
  end;

     aux:=DBMemoFormula.Text;
     RichMemoFormula.Text:=aux;
     i:=Length(aux);

     for j:=1 to i do
     begin
          if (aux[j] = '0') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '1') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '2') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '3') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '4') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '5') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '6') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '7')  then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '8') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '9') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte)
          else
          if (aux[j] = '(') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte2)
          else
          if (aux[j] = ')') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte2)
          else
          if (aux[j] = '.') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte2)
          else
          if (aux[j] = ',') then
             RichMemoFormula.SetTextAttributes(j-1,1, fonte2)
          else
          RichMemoFormula.SetTextAttributes(j-1,1, fontenormal)
     end;
end;

procedure TFormPrincipal.LimpaRichMemo;
begin
  RichmemoFormula.Text:='';
end;

procedure TFormPrincipal.Barra_Status;
          function ordem:string;
          begin
               if (menuitemdureza.checked) then
               begin
                    result:='dureza.';
               end
               else
               begin
                    result:='densidade.';
               end;
          end;
begin
  if ListboxMinerais.items.Count = 0 then
  statusbar1.Panels.Items[0].Text:='';
  if ListboxMinerais.items.count = 1 then
  statusbar1.Panels.Items[0].Text:= '      1 Mineral encontrado';
  if ListboxMinerais.items.count > 1 then
  statusbar1.Panels.Items[0].Text:= '     '+inttostr(ListboxMinerais.Items.Count)+' minerais encontrados listados em ordem decrescente de '+ordem;
end;

procedure TFormPrincipal.EditaDD;
begin
  if (dbeditdureza_min.text = dbeditdureza_max.text) then
  begin
  editdureza.text:=dbeditdureza_min.text;
  end
  else
  begin
  editDureza.text:=dbeditdureza_min.text+' - '+dbeditdureza_max.text;
  end;
  if (dbeditdensidade_min.text = dbeditdensidade_max.text) then
  begin
  editdensidade.text:=dbeditdensidade_min.text;
  end
  else
  begin
  editDensidade.text:=dbeditdensidade_min.text+' - '+dbeditdensidade_max.text;
  end;
end;

procedure TFormPrincipal.LimpaDD;
begin
  editDureza.text:='';
  editDensidade.text:='';
end;

function TFormPrincipal.Filtro_Nome: boolean;
var eliminar:boolean;
begin
  if (EditNome.Text = Emptystr) then
  begin
  eliminar:=false;
  end
  else
  begin
     if Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString = Trim(EditNome.text) then
     begin
     eliminar:= false
     end
     else
     if Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString = Trim(uppercase(EditNome.Text)) then
     begin
     eliminar:= false
     end
     else
     if Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString = Trim(lowercase(EditNome.Text)) then
     begin
     eliminar:= false
     end
     else
     if Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString = Trim(upcase(copy(EditNome.Text,1,1))+lowercase(copy(EditNome.Text,2, length(EditNome.Text)))) then
     begin
     eliminar:= false
     end
     else
     eliminar:=true;
  end;
  result:=eliminar;
end;

function TFormPrincipal.Filtro_Ocorrencia: boolean;
var eliminar: boolean; aux: string; i: integer;
begin
     if (EditOcorrencia.Text = EmptyStr) Then
     eliminar:=False
     else
     begin
          aux:=Dados.SQLite3DatasetGeral.FieldByName('ocorrencia').AsString;
          eliminar:=true;
          for i:=0 to (length(aux) -1 ) do
          Begin
               if (EditOcorrencia.Text = Copy(aux, i, length(Trim(EditOcorrencia.Text)))) then
               eliminar:=false;
          end;
     end;
     result:=eliminar;
end;

function TFormPrincipal.Filtro_Associacao: Boolean;
var eliminar: boolean; aux: string; i: integer;
begin
     if (EditAssociacao.Text = EmptyStr) Then
     eliminar:=False
     else
     begin
          aux:=Dados.SQLite3DatasetGeral.FieldByName('associacao').AsString;
          eliminar:=true;
          for i:=0 to (length(aux) -1 ) do
          Begin
               if (EditAssociacao.Text = Copy(aux, i, length(Trim(EditAssociacao.Text)))) then
               eliminar:=false;
          end;
     end;
     result:=eliminar;
end;

procedure TFormPrincipal.Adiciona_Imagem(num: char);
var fs:tfilestream;
begin
        OpenPictureDialog1.FileName :=emptystr;
        OpenPictureDialog1.Execute;
        if (OpenPictureDialog1.FileName <> emptystr) then
        begin
           try
              fs := TFileStream.Create(OpenPictureDialog1.FileName ,fmOpenRead);
              if (ListboxMinerais.GetSelectedText <> emptystr) then
              sldb.UpdateBlob('UPDATE minerais set imagem'+num+' = ? WHERE nome = "'+dados.SQLite3DatasetGeral.FieldByName('nome').asstring+'"' ,fs)
              else
              begin       //colocar procedimento de checar campo
              sldb.UpdateBlob('UPDATE mineralogia set imagem'+num+' = ? WHERE campo = "'+Nome_Didatico+'"' ,fs);
              end;
           finally
              fs.free;
           end;
        Imagem_Selecionada:=num;
        AtualizaImagem;
        end;
end;

procedure TFormPrincipal.Adiciona_Cristalografia(num:char);
var fs:tfilestream;
begin
   if (MenuItemModoEdicao.Checked) then
   begin
    if (ListboxMinerais.GetSelectedText <> emptystr) then
    begin
        OpenPictureDialog1.FileName :=emptystr;
        OpenPictureDialog1.Execute;
        if (OpenPictureDialog1.FileName <> emptystr) then
           begin
               try
                 fs := TFileStream.Create(OpenPictureDialog1.FileName ,fmOpenRead);
                 sldb.UpdateBlob('UPDATE minerais set imagemCristalografia'+num+' = ? WHERE nome = "'+Dados.SQLite3DatasetGeral.FieldByName('nome').asstring+'"' ,fs);
               finally
                  fs.free;
               end;
           end;
        if (num = '1') then Imagem_Selecionada:='6'
        else
        Imagem_Selecionada:='7';
        AtualizaImagem;
    end;
   end;
end;

procedure TFormPrincipal.AtualizaImagem;
var nome_mineral:string;
begin
  nome_mineral:= ListboxMinerais.GetselectedText;
  if (ListBoxMinerais.GetSelectedText <> EmptyStr) then
  begin       //diminuir tamanho do codigo, usando um try e um sldb.gettable
       try       //deu erro na linha abaixo, dataset fechado ao deletar e criar novo mineral
       sltb := sldb.GetTable('SELECT imagem1, Imagem2, Imagem3, Imagem4, Imagem5, imagemCristalografia1, imagemCristalografia2 FROM minerais WHERE nome = "' + nome_mineral+'"');
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagem1']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.Image1.Picture.Graphic := pic;
       self.ImageAmpliada.Picture.Graphic := pic;
       pic.free;
       end
       else
       begin
       image1.Picture.Clear;
       ImageAmpliada.Picture.Clear;
       end;
       finally

       end;

       try
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagem2']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.Image2.Picture.Graphic := pic;
       pic.free
       end
       else
       image2.Picture.Clear;
       finally

       end;

       try
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagem3']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.Image3.Picture.Graphic := pic;
       pic.Free;
       end
       else
       image3.Picture.Clear;
       finally

       end;

       try
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagem4']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.Image4.Picture.Graphic := pic;
       pic.Free;
       end
       else
       image4.Picture.Clear;
       finally

       end;

       try
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagem5']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.Image5.Picture.Graphic := pic;
       pic.Free;
       end
       else
       image5.Picture.Clear;
       finally

       end;

       try
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagemCristalografia1']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.ImageCristalografia1.Picture.Graphic := pic;
       pic.Free;
       end
       else
       ImageCristalografia1.Picture.Clear;
       finally

       end;

       try
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagemCristalografia2']);
       if (ms <> nil) then
       begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.ImageCristalografia2.Picture.Graphic := pic;
       pic.Free;
       end
       else
       ImageCristalografia2.Picture.Clear;
       finally

       end;
  end
  else
  Begin
      Image1.Picture.Clear;
      Image2.Picture.Clear;
      Image3.Picture.Clear;
      Image4.Picture.Clear;
      Image5.Picture.Clear;
  end;
end;

function TFormPrincipal.Nome_Didatico: String;
Begin
     if (ComboBoxSubGrupo.Text = EmptyStr) then
     begin
          if (ComboBoxGrupo.Text = EmptyStr) then
          Begin
               if (ComboBoxSubClasse.Text = EmptyStr) then
               begin
                    if (ComboBoxClasse.Text = EmptyStr) then
                    begin
                         Result:='Geral';
                    end
                    else
                        Result:=ComboBoxClasse.Text;
                end
                else
                    Result:=ComboBoxSubClasse.Text;
          end
          else
              Result:=ComboBoxGrupo.Text;
      end
      else
          Result:=ComboBoxSubGrupo.Text;
end;


procedure TFormPrincipal.SelecionaImagem(num:char);
var SQL: String;
begin
       try
       if (ListboxMinerais.GetSelectedText<> EmptyStr) then
       begin
       sltb :=sldb.GetTable('SELECT imagem'+num+' FROM minerais where nome = "' + dados.SQLite3DatasetGeral.fieldbyname('nome').asstring+'"');
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagem'+num]);
       end
       else
       begin
       sltb2 :=sldb.GetTable('SELECT imagem'+num+' FROM mineralogia where campo = "' +Nome_Didatico+'"');
       if (sltb2.Count = 0) then
       begin
            SQL:='INSERT INTO mineralogia (campo) VALUES ("'+Nome_Didatico+'");';
            sldb.ExecSQL(SQL);
            sltb2 :=sldb.GetTable('SELECT imagem'+num+' FROM mineralogia where campo = "' +Nome_Didatico+'"');
       end;
       ms := sltb2.FieldAsBlob(sltb2.FieldIndex['imagem'+num]);
       end;
       if (ms <> nil) then
       begin
       ms.Position := 0;

       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);

       self.ImageAmpliada.Picture.Graphic := pic;

       pic.Free;
       end
       else
       ImageAmpliada.Picture.Clear;
       finally
       if (ListboxMinerais.GetSelectedText<> EmptyStr) then
       sltb.free
       else
       sltb2.Free;
       end;
       Imagem_Selecionada:=num;
end;

procedure TFormPrincipal.ProcuraMineral;
begin
   Nome_Mineral:= ListboxMinerais.GetSelectedText;
   if Nome_Mineral <> emptystr then
   begin
        PanelFicha.Visible:=False;
        if (Dados.SQLite3DatasetGeral.active) then
        Dados.SQLite3DatasetGeral.applyupdates
        else Dados.SQLite3DatasetGeral.open();

        if (Listboxminerais.GetSelectedText <> emptyStr) then
        Begin   //Refazer algoritmo de busca (se distancia < x entao)
             if (ListBoxMinerais.Items.IndexOf(Trim(ListBoxMinerais.GetSelectedText)) > 15)
             and
             (ListBoxMinerais.Items.IndexOf(Trim(ListBoxMinerais.GetSelectedText)) < ListBoxMinerais.Items.Count-15)
             then
             begin
                  if ListboxMinerais.Items.IndexOf(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString)
                  >
                  ListBoxMinerais.Items.IndexOf(ListBoxMinerais.GetSelectedText ) then
                  begin
                       repeat
                       Dados.SQLite3DatasetGeral.Prior;
                       until (Dados.SQLite3DatasetGeral.Fieldbyname('nome').asstring) = Nome_Mineral;
                  end
                  else
                  if ListboxMinerais.Items.IndexOf(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString)
                  < ListBoxMinerais.Items.IndexOf(ListBoxMinerais.GetSelectedText)  then
                  begin
                       repeat
                       Dados.SQLite3DatasetGeral.Next;
                       until (Dados.SQLite3DatasetGeral.Fieldbyname('nome').asstring) = Nome_Mineral;
                  end;
             end
             else
             begin
                  if ListBoxMinerais.Items.IndexOf(ListBoxMinerais.GetSelectedText) = 0 then
                  Dados.SQLite3DatasetGeral.First
                  else
                  if ListBoxMinerais.Items.IndexOf(ListBoxMinerais.GetSelectedText) = ListBoxminerais.Count-1 then
                  Dados.SQLite3DatasetGeral.Last
                  else
                  begin
                       if (ListboxMinerais.GetSelectedText) <> Dados.SQLite3DatasetGeral.FieldByName('nome').asstring then
                       begin;
                             if ListboxMinerais.Items.IndexOf(Dados.Sqlite3DatasetGeral.FieldByName('nome').AsString) <=15 then
                       begin
                            Dados.SQLite3DatasetGeral.First;
                            repeat
                            Dados.SQLite3DatasetGeral.Next;
                            until Dados.SQLite3DatasetGeral.Fieldbyname('nome').asstring = Nome_Mineral;
                       end
                       else
                       begin
                            Dados.SQLite3DatasetGeral.Last;
                            repeat
                            Dados.SQLite3DatasetGeral.Prior;
                            until (Dados.SQLite3DatasetGeral.Fieldbyname('nome').asstring) = Nome_Mineral;
                       end;
                       end;
                  end;
             end;
    end
    else
    begin
         Dados.SQLite3DatasetGeral.first;
         if (Dados.SQLite3DatasetGeral.FieldByName('nome').AsString <> Nome_Mineral) then
         begin                                                                         //cor azul $00FF952B
           repeat                                                                    //azul do panel filtro: $00BB5E00 e $00FF8000
             Dados.SQLite3DatasetGeral.next();
           until (Dados.SQLite3DatasetGeral.Fieldbyname('nome').asstring = Nome_Mineral);
         end;
    end;
   atualizarichmemo;
   editaDD;
   AtualizaImagem;
   GroupBoxDureza.Visible:=false;
   GroupBoxDensidade.Visible:=false;
   PanelFicha.Visible:=True;
   end;
end;

procedure TFormPrincipal.Image1Click(Sender: TObject);
begin
     SelecionaImagem('1');
end;

procedure TFormPrincipal.Image1DblClick(Sender: TObject);
begin
  Adiciona_Imagem('1');
end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
     SelecionaImagem('2');
end;

procedure TFormPrincipal.Image2DblClick(Sender: TObject);
begin
  Adiciona_Imagem('2');
end;

procedure TFormPrincipal.Image3Click(Sender: TObject);
begin
     SelecionaImagem('3');
end;

procedure TFormPrincipal.Image3DblClick(Sender: TObject);
begin
  Adiciona_Imagem('3');
end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin
     SelecionaImagem('4');
end;

procedure TFormPrincipal.Image4DblClick(Sender: TObject);
begin
  Adiciona_Imagem('4');
end;

procedure TFormPrincipal.Image5Click(Sender: TObject);
begin
     SelecionaImagem('5');
end;

procedure TFormPrincipal.ImageCristalografia1DblClick(Sender: TObject);
begin
  Adiciona_Cristalografia('1');
end;

procedure TFormPrincipal.ImageCristalografia2DblClick(Sender: TObject);
begin
  Adiciona_Cristalografia('2');
end;

procedure TFormPrincipal.Image5DblClick(Sender: TObject);
begin
  Adiciona_Imagem('5');
end;

procedure TFormPrincipal.MemoryStreamParaImagem;
begin
       ms.Position := 0;
       pic := TJPEGImage.Create;
       pic.LoadFromStream(ms);
       self.ImageAmpliada.Picture.Graphic := pic;
       pic.Free;
end;

procedure TFormPrincipal.ImageCristalografia1Click(Sender: TObject);
begin
       if (ListboxMinerais.GetSelectedText<> EmptyStr) then
       begin
       try
       sltb :=sldb.GetTable('SELECT imagemCristalografia1 FROM minerais where nome = "' + dados.SQLite3DatasetGeral.fieldbyname('nome').asstring+'"');
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagemCristalografia1']);

       if (ms <> nil) then
       MemoryStreamParaImagem
       else
       ImageAmpliada.Picture.Clear;
       finally
       sltb.free
       end;
       end;
       Imagem_Selecionada:='6';
end;

procedure TFormPrincipal.ImageCristalografia2Click(Sender: TObject);
begin
       if (ListboxMinerais.GetSelectedText<> EmptyStr) then
       begin
       Try
       sltb :=sldb.GetTable('SELECT imagemCristalografia2 FROM minerais where nome = "' + dados.SQLite3DatasetGeral.fieldbyname('nome').asstring+'"');
       ms := sltb.FieldAsBlob(sltb.FieldIndex['imagemCristalografia2']);
       if (ms <> nil) then
       MemoryStreamParaImagem
       else
       ImageAmpliada.Picture.Clear;
       finally
       sltb.free
       end;
       end;
       Imagem_Selecionada:='7';
end;


end.

