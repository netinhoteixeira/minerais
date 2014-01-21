unit unitfichaespecie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RichMemo, TAGraph, TASeries, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, ComCtrls, StdCtrls, DbCtrls, Buttons, SQLite3DS,
  DB, INIFiles;

type

  { TFormFichaEspecie }

  TFormFichaEspecie = class(TForm)
    DBMemoClasse_Cristalina: TDBMemo;
    DBMemoFormula: TDBMemo;
    DBMemoHabito: TDBMemo;
    DBMemoH_M: TDBMemo;
    DBMemoSistema: TDBMemo;
    EditDensidade: TEdit;
    EditDureza: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxCristalografia: TGroupBox;
    GroupBoxCristalografia1: TGroupBox;
    GroupBoxCristalografia2: TGroupBox;
    GroupBoxImagemAmpliada: TGroupBox;
    GroupBoxInf_Gerais: TGroupBox;
    GroupBoxOpticas: TGroupBox;
    GroupBoxProp_Fisicas: TGroupBox;
    HeaderControl1: THeaderControl;
    Imagem: TImage;
    ImageCristalografia1: TImage;
    ImageCristalografia2: TImage;
    Label1: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    LabelAlteracao: TLabel;
    LabelAngulo_2V: TLabel;
    LabelAplicacao: TLabel;
    LabelAssociacao: TLabel;
    LabelBirrefringencia: TLabel;
    LabelBrilho: TLabel;
    LabelClasse: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelClivagem: TLabel;
    LabelCor: TLabel;
    LabelCor_Interferencia: TLabel;
    LabelCor_Lamina: TLabel;
    LabelDifaneidade: TLabel;
    LabelDistincao: TLabel;
    LabelExtincao: TLabel;
    LabelFratura: TLabel;
    LabelGrupo: TLabel;
    LabelHabito: TLabel;
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
    MemoDifaneidade: TMemo;
    MemoExtincao: TMemo;
    MemoSinalOptico: TMemo;
    MemoIndiceRefracao: TMemo;
    MemoAngulo: TMemo;
    MemoInterferencia: TMemo;
    MemoCorLamina: TMemo;
    MemoSinalElongacao: TMemo;
    MemoBirrefringencia: TMemo;
    MemoRelevo: TMemo;
    MemoCor: TMemo;
    MemoTraco: TMemo;
    MemoBrilho: TMemo;
    MemoClivagem: TMemo;
    MemoFratura: TMemo;
    MemoMagnetismo: TMemo;
    MemoLuminescencia: TMemo;
    MemoAssociacao: TMemo;
    MemoDistincao: TMemo;
    MemoAlteracao: TMemo;
    MemoAplicacao: TMemo;
    MemoOcorrencia: TMemo;
    MemoSubgrupo: TMemo;
    MemoGrupo: TMemo;
    MemoSubclasse: TMemo;
    MemoClasse: TMemo;
    MemoNome: TMemo;
    RichMemoFormula: TRichMemo;
    PageControlFicha: TPageControl;
    TabSheetCristalografia: TTabSheet;
    TabSheetImagem: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure HeaderControl1SectionClick(HeaderControl: TCustomHeaderControl;
      Section: THeaderSection);
  private
    { private declarations }
  public
    { public declarations }
  end;

  const
    FonteGrande:Integer = 13;
    FontePequena:Integer = 9;

var
  FormFichaEspecie:TFormFichaEspecie;
  Config:TIniFile;
implementation
uses udatamodule, unitBlobFields;
{$R *.lfm}

{ TFormFichaEspecie }

procedure TFormFichaEspecie.FormCreate(Sender: TObject);
var Diretorio:String;
begin
  if DirectoryExists(GetCurrentDir+'\Data') then
    Diretorio := GetCurrentDir + '\Data\config.ini'
  else
    Diretorio:= GetCurrentDir + '\config.ini';
  Config:= TIniFile.Create(Diretorio);
  if Config.ReadString('Configuracoes', 'Fonte', '') = 'Grande' then
    PageControlFicha.Font.Size:= FonteGrande
  else
    PageControlFicha.Font.Size:= FontePequena;
  Config.Free;

  Dados.TableMinerals:= Dados.DatabaseMinerals.GetTable(Dados.Sqlite3DatasetGeral.SQL);
  MemoNome.Text:= Dados.TableMinerals.FieldByName['nome'];
  MemoClasse.Text:= Dados.TableMinerals.FieldByName['classe'];
  MemoSubClasse.Text:= Dados.TableMinerals.FieldByName['subclasse'];
  MemoGrupo.Text:= Dados.TableMinerals.FieldByName['grupo'];
  MemoSubGrupo.Text:= Dados.TableMinerals.FieldByName['subgrupo'];
    MemoAssociacao.Text:=Dados.TableMinerals.FieldByName['ocorrencia'];
  MemoAssociacao.Text:=Dados.TableMinerals.FieldByName['associacao'];
  MemoDistincao.Text:=Dados.TableMinerals.FieldByName['distincao'];
  MemoAlteracao.Text:=Dados.TableMinerals.FieldByName['alteracao'];
  MemoAplicacao.Text:=Dados.TableMinerals.FieldByName['aplicacao'];

  EditDureza.Text:=Dados.TableMinerals.FieldByName['dureza_min']+
    ' - '+Dados.TableMinerals.FieldByName['dureza_max'];
  EditDensidade.Text:=Dados.TableMinerals.FieldByName['densidade_min']+
    ' - '+Dados.TableMinerals.FieldByName['densidade_max'];
  MemoCor.Text:=Dados.TableMinerals.FieldByName['cor'];
  MemoTraco.Text:=Dados.TableMinerals.FieldByName['traco'];
  MemoBrilho.Text:=Dados.TableMinerals.FieldByName['brilho'];
  MemoClivagem.Text:=Dados.TableMinerals.FieldByName['clivagem'];
  MemoFratura.Text:=Dados.TableMinerals.FieldByName['fratura'];
  MemoMagnetismo.Text:=Dados.TableMinerals.FieldByName['magnetismo'];
  MemoLuminescencia.Text:=Dados.TableMinerals.FieldByName['luminescencia'];

  MemoDifaneidade.Text:=Dados.TableMinerals.FieldByName['difaneidade'];
  MemoSinalOptico.Text:=Dados.TableMinerals.FieldByName['sinal_optico'];
  MemoIndiceRefracao.Text:=Dados.TableMinerals.FieldByName['indice_refracao'];
  MemoAngulo.Text:=Dados.TableMinerals.FieldByName['angulo'];
  MemoInterferencia.Text:=Dados.TableMinerals.FieldByName['cor_interferencia'];
  MemoCorLamina.Text:=Dados.TableMinerals.FieldByName['cor_lamina'];
  MemoSinalElongacao.Text:=Dados.TableMinerals.FieldByName['sinal_elongacao'];
  MemoBirrefringencia.Text:=Dados.TableMinerals.FieldByName['birrefringencia'];
  MemoRelevo.Text:=Dados.TableMinerals.FieldByName['relevo'];
  MemoExtincao.Text:=Dados.TableMinerals.FieldByName['extincao'];

  self.Imagem.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
    'imagem1', Dados.TableMinerals.FieldByName['nome'], EmptyStr, EmptyStr, EmptyStr);
end;

procedure TFormFichaEspecie.HeaderControl1SectionClick(
  HeaderControl: TCustomHeaderControl; Section: THeaderSection);
begin
  Case Section.Index of
  0:begin
     self.Imagem.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
       'imagem1', MemoNome.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  1:begin
      self.Imagem.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem2', MemoNome.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  2:begin
      self.Imagem.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem3', MemoNome.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  3:begin
      self.Imagem.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem4', MemoNome.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  4:begin
      self.Imagem.Picture.Graphic := SelectBlobFieldToJPEGImage('minerais',
        'imagem5', MemoNome.Text, EmptyStr, EmptyStr, EmptyStr);
  end;
  end;
end;

procedure TFormFichaEspecie.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;

end.

