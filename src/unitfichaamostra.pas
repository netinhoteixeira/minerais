unit unitfichaamostra;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DbCtrls, Buttons, unitImagem;
type

  { TFormFichaAmostra }

  TFormFichaAmostra = class(TForm)
    ChartDifracao: TChart;
    ChartInfravermelho: TChart;
    ChartInfravermelhoLineSeries1: TLineSeries;
    ChartRaman: TChart;
    ChartVarredura: TChart;
    ChartVarreduraLineSeries1: TLineSeries;
    ComboBoxDirecaoLaser: TComboBox;
    ComboBoxEquipamentoInfravermelho: TComboBox;
    ComboBoxEquipamentoRaman: TComboBox;
    ComboBoxEquipamentoVarredura: TComboBox;
    ComboBoxVarreduraOnda: TComboBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBoxDadosDifracao: TGroupBox;
    GroupBoxDifracao: TGroupBox;
    GroupBoxGraficoInfravermelho: TGroupBox;
    GroupBoxGraficoRaman: TGroupBox;
    GroupBoxGraficoVarredura: TGroupBox;
    GroupBoxImagemQuimica: TGroupBox;
    ImageQuimica: TImage;
    ImageDescricao: TImage;
    Label10: TLabel;
    Label1Especie: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelA: TLabel;
    LabelAlpha: TLabel;
    LabelB: TLabel;
    LabelBeta: TLabel;
    LabelC: TLabel;
    LabelComprimentodeOnda: TLabel;
    LabelConfiguracaoInstrumento: TLabel;
    LabelDescricao2: TLabel;
    LabelDescricao3: TLabel;
    LabelDescricaoBroadScan: TLabel;
    LabelDescricaoIV: TLabel;
    LabelEquipamentoRaman: TLabel;
    LabelFonte: TLabel;
    LabelGamma: TLabel;
    LabelId_Quimica: TLabel;
    LabelId_Quimica1: TLabel;
    LabelId_Quimica2: TLabel;
    LabelId_Quimica3: TLabel;
    LabelId_Quimica4: TLabel;
    LabelInstrumentoIV: TLabel;
    LabelLocalidade: TLabel;
    LabelOrientacao: TLabel;
    LabelPinId: TLabel;
    LabelProprietario: TLabel;
    LabelQuimicaIdeal: TLabel;
    LabelQuimicaMedida: TLabel;
    LabelResolucao: TLabel;
    LabelSistemaCristalino: TLabel;
    LabelVolume: TLabel;
    Memo1: TMemo;
    MemoBeta: TMemo;
    MemoGamma: TMemo;
    MemoVolume: TMemo;
    MemoSistemaCristalino: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    MemoPolvilhoRruff_id: TMemo;
    MemoPolvilhoDigito: TMemo;
    MemoA: TMemo;
    MemoB: TMemo;
    MemoC: TMemo;
    MemoAlpha: TMemo;
    MemoInfravermelhoRruff_id: TMemo;
    MemoInfravermelhoDigito: TMemo;
    MemoInfravermelhoDescricao: TMemo;
    MemoResolucao: TMemo;
    MemoRamanRruff_id: TMemo;
    MemoRamanDigito: TMemo;
    MemoRamanDescricao: TMemo;
    MemoPin_id: TMemo;
    MemoOrientacao: TMemo;
    MemoQuimicaRruff_id: TMemo;
    MemoQuimicaDigito: TMemo;
    MemoQuimicaDescricao: TMemo;
    MemoQuimicaMedida: TMemo;
    MemoLocalidade: TMemo;
    MemoFonte: TMemo;
    MemoProprietario: TMemo;
    MemoDescricao: TMemo;
    MemoSituacao: TMemo;
    MemoRruff_id: TMemo;
    MemoQuimica: TMemo;
    MemoEspecie: TMemo;
    PageControlRruff: TPageControl;
    PanelRRUFF: TPanel;
    TabSheetRruffDescricao: TTabSheet;
    TabSheetRruffDifracao: TTabSheet;
    TabSheetRruffInfra: TTabSheet;
    TabSheetRruffQuimica: TTabSheet;
    TabSheetRruffRaman: TTabSheet;
    TabSheetRruffVarredura: TTabSheet;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControlRruffChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormFichaAmostra: TFormFichaAmostra;

implementation
uses udatamodule;
{$R *.lfm}

{ TFormFichaAmostra }

procedure TFormFichaAmostra.FormCreate(Sender: TObject);
begin
  Dados.sltb:= Dados.sldb.GetTable(Dados.Sqlite3DatasetAmostras.SQL);
  MemoEspecie.Text:=Dados.sltb.FieldByName['especie'];
  MemoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoQuimica.Text:=Dados.sltb.FieldByName['quimicaideal'];
  MemoLocalidade.Text:=Dados.sltb.FieldByName['localidade'];
  MemoFonte.Text:=Dados.sltb.FieldByName['fonte'];
  MemoProprietario.Text:=Dados.sltb.FieldByName['proprietario'];
  MemoDescricao.Text:=Dados.sltb.FieldByName['descricao_amostra'];
  MemoSituacao.Text:=Dados.sltb.FieldByName['situacao'];

  MemoQuimicaRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoQuimicaDigito.Text:=Dados.sltb.FieldByName['rruff_id_quimica'];
  MemoQuimicaDescricao.Text:=Dados.sltb.FieldByName['descricao_quimica'];
  MemoQuimicaMedida.Text:=Dados.sltb.FieldByName['quimicamedida'];

  MemoRamanRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoRamanDigito.Text:=Dados.sltb.FieldByName['rruff_id_raman'];
  MemoRamanDescricao.Text:=Dados.sltb.FieldByName['descricao_raman'];
  MemoPin_id.Text:=Dados.sltb.FieldByName['pin_id'];
  MemoOrientacao.Text:=Dados.sltb.FieldByName['orientacao'];

  MemoInfravermelhoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoInfravermelhoDigito.Text:=
    Dados.sltb.FieldByName['rruff_id_infravermelho'];
  MemoInfravermelhoDescricao.Text:=
    Dados.sltb.FieldByName['descricao_infravermelho'];;
  MemoResolucao.Text:=Dados.sltb.FieldByName['resolucao'];

  MemoPolvilhoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoPolvilhoDigito.Text:=Dados.sltb.FieldByName['rruff_id_polvilho'];
  MemoA.Text:=Dados.sltb.FieldByName['a'];
  MemoB.Text:=Dados.sltb.FieldByName['b'];
  MemoC.Text:=Dados.sltb.FieldByName['c'];
  MemoAlpha.Text:=Dados.sltb.FieldByName['alpha'];
  MemoBeta.Text:=Dados.sltb.FieldByName['beta'];
  MemoGamma.Text:=Dados.sltb.FieldByName['gamma'];
  MemoVolume.Text:=Dados.sltb.FieldByName['volume'];
  MemoSistemaCristalino.Text:=Dados.sltb.FieldByName['sistema_cristalino'];

  self.ImageDescricao.Picture.Graphic:=
    SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
      dados.sltb.FieldByName['rruff_id'], 'Amostra');

  self.ImageQuimica.Picture.Graphic:=
    SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
      dados.sltb.FieldByName['rruff_id'], 'quimica');

 { Dados.DeterminaArquivo(Dados.sltb.FieldByName['especie'],
    Dados.sltb.FieldByName['rruff_id'], 'Microssonda', '', '');
      if Dados.SdfDataSetPlanilhaMicrossonda.FileName <> EmptyStr then
        BitbtnVisualizar.Enabled := True
      else
        BitbtnVisualizar.Enabled := False;     }


 { Dataset:=Dados.CriarDataset(Dados.Sqlite3DatasetAmostras.FileName, 'Rruff');
  Dataset.Open; }
end;

procedure TFormFichaAmostra.PageControlRruffChange(Sender: TObject);
begin
  if PageControlRruff.ActivePage.Caption = 'Descrição da Amostra' then
    begin
      self.ImageDescricao.Picture.Graphic :=
        SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
        Dados.sltb.FieldByName['rruff_id'], 'Amostra');
    end;

    if PageControlRruff.ActivePage.Caption = 'Química Ideal' then
    begin
      self.ImageQuimica.Picture.Graphic :=
        SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
          Dados.sltb.FieldByName['rruff_id'], 'Quimica');
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Espectro RAMAN' then
    begin
      DadosRAMAN(Dados.sltb.FieldByName['especie'], Dados.sltb.FieldByName['rruff_id'],
      ComboboxEquipamentoRaman.Text, ComboboxDirecaoLaser.Text);

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Dados.sltb.FieldByName['especie'],
          Dados.sltb.FieldByName['rruff_id'],
           'RAMAN', ComboboxEquipamentoRaman.Text, ComboboxDirecaoLaser.Text)));
    end
    else
    if PageControlRruff.ActivePage.Caption = AmplaVarredura then
    begin
      AtualizaComboboxEquipamentos(ComboboxEquipamentoVarredura);

      ChartVarredura.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Dados.sltb.FieldByName['especie'],
          Dados.sltb.FieldByName['rruff_id'],
           'Ampla Varredura', ComboboxEquipamentoVarredura.Text, ComboboxVarreduraOnda.Text)));
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Espectro Infravermelho' then
    begin
      ChartInfravermelho.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Dados.sltb.FieldByName['especie'],
          Dados.sltb.FieldByName['rruff_id'],
            'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text, '')));
    end
    else
    if PageControlRruff.ActivePage.Caption = 'Powder Diffraction' then
    begin
      ChartDifracao.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
        Dados.sltb.FieldByName['especie'], Dados.sltb.FieldByName['rruff_id'],
          'Difracao', '', '')));
    end;
end;

procedure TFormFichaAmostra.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;

end.

