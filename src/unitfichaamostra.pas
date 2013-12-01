unit unitfichaamostra;

{$mode objfpc}{$H+}

interface

uses

  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DbCtrls, Buttons, unitImagem,
  unitGraficos;

type

  { TFormFichaAmostra }

  TFormFichaAmostra = class(TForm)
    ChartDifracao: TChart;
    ChartInfravermelho: TChart;
    ChartInfravermelhoLineSeries1: TLineSeries;
    ChartRaman: TChart;
    ChartVarredura: TChart;
    ChartVarreduraLineSeries1: TLineSeries;
    ComboBoxDifracaoDigito: TComboBox;
    ComboBoxDirecaoLaser: TComboBox;
    ComboBoxEquipamentoInfravermelho: TComboBox;
    ComboBoxEquipamentoRaman: TComboBox;
    ComboBoxEquipamentoVarredura: TComboBox;
    ComboBoxInfravermelhoDigito: TComboBox;
    ComboBoxQuimicaDigito: TComboBox;
    ComboBoxRamanDigito: TComboBox;
    ComboBoxVarreduraDigito: TComboBox;
    ComboBoxVarreduraOnda: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
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
    ImageAmostra: TImage;
    ImageQuimica: TImage;
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
    MemoQuimicaDescricao: TMemo;
    MemoQuimicaMedida: TMemo;
    MemoQuimicaRruff_id: TMemo;
    MemoVarreduraRruff_id: TMemo;
    Memoproprietario: TMemo;
    MemoAmostraDescricao: TMemo;
    MemoSituacao: TMemo;
    MemoFonte: TMemo;
    MemoLocalidade: TMemo;
    MemoAmostraEspecie: TMemo;
    MemoA: TMemo;
    MemoAmostraRruff_id: TMemo;
    MemoAmostraQuimica: TMemo;
    MemoSistemaCristalino: TMemo;
    MemoVarreduraDescricao: TMemo;
    MemoVolume: TMemo;
    MemoGamma: TMemo;
    MemoBeta: TMemo;
    MemoAlpha: TMemo;
    MemoC: TMemo;
    MemoB: TMemo;
    MemoRruff_id: TMemo;
    MemoInfravermelhoDescricao: TMemo;
    MemoInfravermelhoResolucao: TMemo;
    MemoInfravermelhoRruff_id: TMemo;
    MemoOrientacao: TMemo;
    MemoPin_id: TMemo;
    MemoRamanDescricao: TMemo;
    MemoRamanRruff_id: TMemo;
    PageControlRruff: TPageControl;
    Panel1: TPanel;
    TabSheetRruffDescricao: TTabSheet;
    TabSheetRruffDifracao: TTabSheet;
    TabSheetRruffInfra: TTabSheet;
    TabSheetRruffQuimica: TTabSheet;
    TabSheetRruffRaman: TTabSheet;
    TabSheetRruffVarredura: TTabSheet;
    procedure ComboBoxDirecaoLaserChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControlRruffChange(Sender: TObject);
  private
    { private declarations }
  public
    Especie: String;
    Rruff_id: String;
    Digito: String;
    Indice: Integer;
    { public declarations }
  end;

  const
    TodosOsDados:String = 'Todos os Dados';

var
  FormFichaAmostra: TFormFichaAmostra;

implementation
uses udatamodule;
{$R *.lfm}

{ TFormFichaAmostra }

procedure TFormFichaAmostra.FormCreate(Sender: TObject);
begin

end;

procedure TFormFichaAmostra.FormShow(Sender: TObject);
var Cor:String;
begin
  ComboboxQuimicaDigito.Items.Clear;
  Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito FROM '+
      'raman ORDER BY digito;');
    if Dados.sltb.MoveFirst then
      begin
        ComboboxRamanDigito.Items.Append(Dados.sltb.FieldByName['digito']);
        Dados.sltb.Next;
      end;

    ComboboxRamanDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito FROM '+
      'raman ORDER BY digito ;');
    if Dados.sltb.MoveFirst then
      begin
        ComboboxRamanDigito.Items.Append(Dados.sltb.FieldByName['digito']);
        Dados.sltb.Next;
      end;

    ComboboxVarreduraDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito FROM '+
      'varredura ORDER BY digito;');
    if Dados.sltb.MoveFirst then
      begin
        ComboboxVarreduraDigito.Items.Append(Dados.sltb.FieldByName
          ['digito']);
        Dados.sltb.Next;
      end;

    ComboboxInfravermelhoDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito FROM '+
      'infravermelho ORDER BY digito ;');
    if Dados.sltb.MoveFirst then
      begin
        ComboboxInfravermelhoDigito.Items.Append(Dados.sltb.FieldByName
          ['digito']);
        Dados.sltb.Next;
      end;

    ComboboxDifracaoDigito.Items.Clear;
    Dados.sltb:=Dados.sldb.GetTable('SELECT DISTINCT digito FROM '+
      'difracao ORDER BY digito ;');
    if Dados.sltb.MoveFirst then
      begin
        ComboboxDifracaoDigito.Items.Append(Dados.sltb.FieldByName
          ['digito']);
        Dados.sltb.Next;
      end;
    ComboboxRamanDigito.ItemIndex:=0;
    ComboboxVarreduraDigito.ItemIndex:=0;
    ComboboxInfravermelhoDigito.ItemIndex:=0;
    ComboboxDifracaoDigito.ItemIndex:=0;
  ////////////
  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM rruff WHERE especie ="'+
    Especie+'" AND rruff_id="'+Rruff_id+'" ;');
  MemoAmostraEspecie.Text:=Dados.sltb.FieldByName['especie'];
  MemoAmostraRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoAmostraQuimica.Text:=Dados.sltb.FieldByName['quimicaideal'];
  MemoLocalidade.Text:=Dados.sltb.FieldByName['localidade'];
  MemoFonte.Text:=Dados.sltb.FieldByName['fonte'];
  MemoProprietario.Text:=Dados.sltb.FieldByName['proprietario'];
  MemoAmostraDescricao.Text:=Dados.sltb.FieldByName['descricao_amostra'];
  MemoSituacao.Text:=Dados.sltb.FieldByName['situacao'];

  MemoQuimicaRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoQuimicaDescricao.Text:=Dados.sltb.FieldByName['descricao_quimica'];
  MemoQuimicaMedida.Text:=Dados.sltb.FieldByName['quimicamedida'];

  self.ImageAmostra.Picture.Graphic:=
    SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
      dados.sltb.FieldByName['rruff_id'],'', 'Amostra');

  self.ImageQuimica.Picture.Graphic:=
    SelecionaImagensRruff(Dados.sltb.FieldByName['especie'],
      dados.sltb.FieldByName['rruff_id'],dados.sltb.FieldByName
        ['digito'], 'Quimica');

  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM raman WHERE especie ="'+
    Especie+'" AND rruff_id="'+Rruff_id+'" ;');

  MemoRamanRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoRamanDescricao.Text:=Dados.sltb.FieldByName['descricao_raman'];
  MemoPin_id.Text:=Dados.sltb.FieldByName['pin_id'];
  MemoOrientacao.Text:=Dados.sltb.FieldByName['orientacao'];

  ChartRaman.ClearSeries;
    if ComboboxDirecaoLaser.Text = TodosOsDados then
    begin
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo0), 'Azul'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo45), 'Verde'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo90), 'Vermelho'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Depolarizado), ''));

    end
    else
    begin
      if ComboboxDirecaoLaser.Text = Angulo0 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Azul'))
      else
      if ComboboxDirecaoLaser.Text = Angulo45 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Verde'))
      else
      if ComboboxDirecaoLaser.Text = Angulo90 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Vermelho'))
      else
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), ''));
    end;

  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM varredura WHERE especie ="'+
    Especie+'" AND rruff_id="'+Rruff_id+'" ;');
  MemoVarreduraRruff_id.Text:= Dados.sltb.FieldByName['rruff_id'];
  MemoVarreduraDescricao.Text:= Dados.sltb.FieldByName['descricao_varredura'];

  ChartVarredura.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxVarreduraDigito.Text,
           'Ampla Varredura', ComboboxEquipamentoVarredura.Text, ComboboxVarreduraOnda.Text),''));


  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM infravermelho WHERE especie ="'+
    Especie+'" AND rruff_id="'+Rruff_id+'" ;');
  MemoInfravermelhoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoInfravermelhoDescricao.Text:=
    Dados.sltb.FieldByName['descricao_infravermelho'];;
  MemoInfravermelhoResolucao.Text:=Dados.sltb.FieldByName['resolucao'];

  ChartInfravermelho.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxInfravermelhoDigito.Text,
            'Espectro Infravermelho', ComboboxEquipamentoInfravermelho.Text,''),''));

  Dados.sltb:= Dados.sldb.GetTable('SELECT * FROM difracao WHERE especie ="'+
    Especie+'" AND rruff_id="'+Rruff_id+'" ;');
  MemoRruff_id.Text:=Dados.sltb.FieldByName['rruff_id'];
  MemoA.Text:=Dados.sltb.FieldByName['a'];
  MemoB.Text:=Dados.sltb.FieldByName['b'];
  MemoC.Text:=Dados.sltb.FieldByName['c'];
  MemoAlpha.Text:=Dados.sltb.FieldByName['alpha'];
  MemoBeta.Text:=Dados.sltb.FieldByName['beta'];
  MemoGamma.Text:=Dados.sltb.FieldByName['gamma'];
  MemoVolume.Text:=Dados.sltb.FieldByName['volume'];
  MemoSistemaCristalino.Text:=Dados.sltb.FieldByName['sistema_cristalino'];

  ChartDifracao.AddSeries(PlotarGrafico(Dados.DeterminaArquivo(
        Especie, Rruff_id,
        ComboboxDifracaoDigito.Text, 'Difracao', '', ''),''));
  PageControlRruff.TabIndex:=Indice;
end;

procedure TFormFichaAmostra.PageControlRruffChange(Sender: TObject);
begin

end;

procedure TFormFichaAmostra.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;

procedure TFormFichaAmostra.ComboBoxDirecaoLaserChange(Sender: TObject);
begin
  ChartRaman.ClearSeries;
    if ComboboxDirecaoLaser.Text = TodosOsDados then
    begin
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo0), 'Azul'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo45), 'Verde'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Angulo90), 'Vermelho'));

      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text, Depolarizado), ''));

    end
    else
    begin
      if ComboboxDirecaoLaser.Text = Angulo0 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Azul'))
      else
      if ComboboxDirecaoLaser.Text = Angulo45 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Verde'))
      else
      if ComboboxDirecaoLaser.Text = Angulo90 then
        ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), 'Vermelho'))
      else
      ChartRaman.AddSeries(PlotarGrafico(
        Dados.DeterminaArquivo(Especie,
          Rruff_id, ComboboxRamanDigito.Text,
            EspectroRAMAN, ComboboxEquipamentoRaman.Text,
              ComboboxDirecaoLaser.Text), ''));
    end;
end;

end.

