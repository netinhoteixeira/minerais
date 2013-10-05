unit unitfichaespecie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RichMemo, TAGraph, TASeries, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, ComCtrls, StdCtrls, DbCtrls, Buttons, SQLite3DS,DB, UnitImagem;

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
    PageControlFicha: TPageControl;
    RichMemoFormula: TRichMemo;
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
    Dataset:TSQLite3Dataset;
    Datasource:TDataSource;
    { public declarations }
  end;

var
  FormFichaEspecie:TFormFichaEspecie;

implementation
uses udatamodule;
{$R *.lfm}

{ TFormFichaEspecie }

procedure TFormFichaEspecie.FormCreate(Sender: TObject);
begin
  Dados.sltb:= Dados.sldb.GetTable(Dados.Sqlite3DatasetGeral.SQL);
  MemoNome.Text:=Dados.sltb.FieldByName['nome'];
  MemoClasse.Text:=Dados.sltb.FieldByName['classe'];
  MemoSubClasse.Text:=Dados.sltb.FieldByName['subclasse'];
  MemoGrupo.Text:=Dados.sltb.FieldByName['grupo'];
  MemoSubGrupo.Text:=Dados.sltb.FieldByName['subgrupo'];
  MemoGrupo.Text:=Dados.sltb.FieldByName['grupo'];
  MemoSubGrupo.Text:=Dados.sltb.FieldByName['subgrupo'];
  MemoAssociacao.Text:=Dados.sltb.FieldByName['associacao'];
  MemoDistincao.Text:=Dados.sltb.FieldByName['distincao'];
  MemoAlteracao.Text:=Dados.sltb.FieldByName['alteracao'];
  MemoAplicacao.Text:=Dados.sltb.FieldByName['aplicacao'];

  EditDureza.Text:=Dados.sltb.FieldByName['dureza_min']+
    ' - '+Dados.sltb.FieldByName['dureza_max'];
  EditDensidade.Text:=Dados.sltb.FieldByName['densidade_min']+
    ' - '+Dados.sltb.FieldByName['densidade_max'];
  MemoCor.Text:=Dados.sltb.FieldByName['cor'];
  MemoTraco.Text:=Dados.sltb.FieldByName['traco'];
  MemoBrilho.Text:=Dados.sltb.FieldByName['brilho'];
  MemoClivagem.Text:=Dados.sltb.FieldByName['clivagem'];
  MemoFratura.Text:=Dados.sltb.FieldByName['fratura'];
  MemoMagnetismo.Text:=Dados.sltb.FieldByName['magnetismo'];
  MemoLuminescencia.Text:=Dados.sltb.FieldByName['luminescencia'];

  MemoDifaneidade.Text:=Dados.sltb.FieldByName['difaneidade'];
  MemoSinalOptico.Text:=Dados.sltb.FieldByName['sinal_optico'];
  MemoIndiceRefracao.Text:=Dados.sltb.FieldByName['indice_refracao'];
  MemoAngulo.Text:=Dados.sltb.FieldByName['angulo'];
  MemoInterferencia.Text:=Dados.sltb.FieldByName['cor_interferencia'];
  MemoCorLamina.Text:=Dados.sltb.FieldByName['cor_lamina'];
  MemoSinalElongacao.Text:=Dados.sltb.FieldByName['sinal_elongacao'];
  MemoBirrefringencia.Text:=Dados.sltb.FieldByName['birrefringencia'];
  MemoRelevo.Text:=Dados.sltb.FieldByName['relevo'];
  MemoExtincao.Text:=Dados.sltb.FieldByName['extincao'];

  self.Imagem.Picture.Graphic :=
       SelecionarImagem(Dados.sltb.FieldByName['nome'],'minerais', 1);
 { Dados.CriarDataset(Dados.Sqlite3DatasetGeral.FileName, 'Minerais');
  DBMemoAssociacao.DataSource:=Dados.Datasource;
  DBMemoDistincao.DataSource:=Dados.Datasource;
  DBMemoAlteracao.DataSource:=Dados.Datasource;
  //Datasource.Enabled:=True;    }
end;

procedure TFormFichaEspecie.HeaderControl1SectionClick(
  HeaderControl: TCustomHeaderControl; Section: THeaderSection);
begin
  Case Section.Index of
  0:begin
     self.Imagem.Picture.Graphic :=
       SelecionarImagem(Dados.sltb.FieldByName['nome'],'minerais', 1);
  end;
  1:begin
      self.Imagem.Picture.Graphic :=
       SelecionarImagem(Dados.sltb.FieldByName['nome'],'minerais', 2);
  end;
  2:begin
      self.Imagem.Picture.Graphic :=
       SelecionarImagem(Dados.sltb.FieldByName['nome'],'minerais', 3);
  end;
  3:begin
      self.Imagem.Picture.Graphic :=
       SelecionarImagem(Dados.sltb.FieldByName['nome'],'minerais', 4);
  end;
  4:begin
      self.Imagem.Picture.Graphic :=
       SelecionarImagem(Dados.sltb.FieldByName['nome'],'minerais', 5);
  end;
  end;
end;

procedure TFormFichaEspecie.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;

end.

