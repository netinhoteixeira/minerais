unit unitfichaamostra;

{$mode objfpc}{$H+}

interface

uses

  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DbCtrls, Buttons, ActnList;

type

  { TFormFichaAmostra }

  TFormFichaAmostra = class(TForm)
    ActionComboboxDigitoChange: TAction;
    ActionList1: TActionList;
    ChartDifracao: TChart;
    ChartInfravermelho: TChart;
    ChartInfravermelhoLineSeries1: TLineSeries;
    ChartRaman: TChart;
    ChartBroadScan: TChart;
    ChartBroadScanLineSeries1: TLineSeries;
    ComboBoxDifracaoDigito: TComboBox;
    ComboBoxDirecaoLaser: TComboBox;
    ComboBoxInfravermelhoDigito: TComboBox;
    ComboBoxQuimicaDigito: TComboBox;
    ComboBoxRamanDigito: TComboBox;
    ComboBoxVarreduraDigito: TComboBox;
    ComboBoxVarreduraOnda: TComboBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
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
    MemoInfraredEquipment: TMemo;
    MemoBroadScanEquipment: TMemo;
    MemoRamanEquipment: TMemo;
    MemoA: TMemo;
    MemoAlpha: TMemo;
    MemoAmostraDescricao: TMemo;
    MemoAmostraEspecie: TMemo;
    MemoAmostraQuimica: TMemo;
    MemoAmostraSample: TMemo;
    MemoB: TMemo;
    MemoBeta: TMemo;
    MemoC: TMemo;
    MemoDifracaoSample: TMemo;
    MemoFonte: TMemo;
    MemoGamma: TMemo;
    MemoInfravermelhoDescricao: TMemo;
    MemoInfravermelhoResolucao: TMemo;
    MemoInfravermelhoSample: TMemo;
    MemoLocalidade: TMemo;
    Memoproprietario: TMemo;
    MemoQuimicaDescricao: TMemo;
    MemoQuimicaMedida: TMemo;
    MemoQuimicaSample: TMemo;
    MemoRamanDescricao: TMemo;
    MemoRamanOrientacao: TMemo;
    MemoRamanPin_id: TMemo;
    MemoRamanSample: TMemo;
    MemoSistemaCristalino: TMemo;
    MemoSituacao: TMemo;
    MemoVarreduraDescricao: TMemo;
    MemoVarreduraSample: TMemo;
    MemoVolume: TMemo;
    PageControlSample: TPageControl;
    PanelSample: TPanel;
    SpeedButton1: TSpeedButton;
    TabSheetSampleDescricao: TTabSheet;
    TabSheetSampleDifraction: TTabSheet;
    TabSheetSampleInfrared: TTabSheet;
    TabSheetSampleQuimica: TTabSheet;
    TabSheetSampleRaman: TTabSheet;
    TabSheetSampleVarredura: TTabSheet;
    procedure ActionComboboxDigitoChangeExecute(Sender: TObject);
    procedure ComboBoxDirecaoLaserChange(Sender: TObject);
    procedure ComboBoxVarreduraOndaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormFichaAmostra: TFormFichaAmostra;
  Especie, Sample_id:String;

implementation
uses udatamodule, unitBlobFields;
{$R *.lfm}

{ TFormFichaAmostra }

procedure TFormFichaAmostra.FormCreate(Sender: TObject);
begin
  Especie:= Dados.TableSamples.FieldByName['especie'];
  Sample_id:= Dados.TableSamples.FieldByName['rruff_id'];
 // FormFichaAmostra.Caption:= Sample_id +'  -  '+ Especie;
  Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM rruff WHERE rruff_id="'+
    Sample_id+'" ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoAmostraEspecie.Text:=Dados.TableSamples.FieldByName['especie'];
        MemoAmostraSample.Text:=Dados.TableSamples.FieldByName['rruff_id'];
        MemoAmostraQuimica.Text:=Dados.TableSamples.FieldByName['quimica_ideal'];
        MemoLocalidade.Text:=Dados.TableSamples.FieldByName['localidade'];
        MemoFonte.Text:=Dados.TableSamples.FieldByName['fonte'];
        MemoProprietario.Text:=Dados.TableSamples.FieldByName['proprietario'];
        MemoAmostraDescricao.Text:=Dados.TableSamples.FieldByName['description'];
        MemoSituacao.Text:=Dados.TableSamples.FieldByName['situacao'];
        self.ImageAmostra.Picture.Graphic:= SelectBlobFieldToJPEGImage('rruff',
          'imagem_amostra', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], EmptyStr, EmptyStr);
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM chemistry WHERE rruff_id="'+
      Sample_id+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoQuimicaSample.Text:=Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxQuimicaDigito.ItemIndex:=
          ComboboxQuimicaDigito.Items.Add(Dados.TableSamples.FieldByName['digito']);
        MemoQuimicaDescricao.Text:=Dados.TableSamples.FieldByName['description'];
        MemoQuimicaMedida.Text:=Dados.TableSamples.FieldByName['quimica_medida'];
        ///esta faltando: microprobe_file, microprobe_equipment
        self.ImageQuimica.Picture.Graphic:= SelectBlobFieldToJPEGImage(
          'chemistry', 'image', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.FieldByName
              ['digito'], EmptyStr);
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM raman WHERE rruff_id="'+
      Sample_id+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxDirecaoLaser.ItemIndex:=
          ComboboxDirecaoLaser.Items.Add(Dados.TableSamples.FieldByName['direcao']);
        MemoRamanSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxRamanDigito.ItemIndex:=
          ComboboxRamanDigito.Items.Add(Dados.TableSamples.FieldByName['digito']);
        MemoRamanDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        MemoRamanPin_id.Text:= Dados.TableSamples.FieldByName['pin_id'];
        MemoRamanOrientacao.Text:=  Dados.TableSamples.FieldByName['orientacao'];
        MemoRamanEquipment.Text:= Dados.TableSamples.FieldByName['equipment'];
        ChartRaman.ClearSeries;
        ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman',
          'arquivo_raman', Dados.TableSamples.FieldByName['especie'],
            Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.FieldByName
              ['digito'], Dados.TableSamples.FieldByName['direcao']));
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM varredura WHERE rruff_id="'+
      Sample_id+'" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        ComboboxVarreduraOnda.ItemIndex:= ComboboxVarreduraOnda.Items.Add(
          Dados.TableSamples.FieldByName['comprimento_onda']);
        MemoVarreduraSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxVarreduraDigito.ItemIndex:= ComboboxVarreduraDigito.Items.Add(
          Dados.TableSamples.FieldByName['digito']);
        MemoBroadScanEquipment.Text:=Dados.TableSamples.FieldByName['equipment'];
        MemoVarreduraDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        ChartBroadScan.ClearSeries;
        ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
          'arquivo_varredura', Dados.TableSamples.FieldByName['especie'], Dados.TableSamples.
            FieldByName['rruff_id'], Dados.TableSamples.FieldByName['digito'], Dados.
              TableSamples.FieldByName['comprimento_onda']));
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM infravermelho WHERE '+
      'rruff_id="'+Sample_id+'" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoInfravermelhoSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxInfravermelhoDigito.ItemIndex:= ComboboxInfravermelhoDigito.
          Items.Add(Dados.TableSamples.FieldByName['digito']);
        MemoInfraredEquipment.Text:= Dados.TableSamples.FieldByName
            ['equipment'];
        MemoInfravermelhoResolucao.Text:= Dados.TableSamples.FieldByName['resolucao'];
        MemoInfravermelhoDescricao.Text:= Dados.TableSamples.FieldByName['description'];
        ChartInfravermelho.ClearSeries;
        ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries(
          'infravermelho', 'arquivo_infravermelho', Dados.TableSamples.FieldByName
            ['especie'], Dados.TableSamples.FieldByName['rruff_id'], Dados.TableSamples.
              FieldByName['digito'], EmptyStr));
      end;
    end;

    Dados.TableSamples:= Dados.DatabaseSamples.GetTable('SELECT * FROM difracao WHERE rruff_id="'+
      Sample_id+'" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.RowCount > 0 then
    begin
      if Dados.TableSamples.MoveFirst then
      begin
        MemoDifracaoSample.Text:= Dados.TableSamples.FieldByName['rruff_id'];
        ComboboxDifracaoDigito.ItemIndex:= ComboboxDifracaoDigito.Items.Add(
          Dados.TableSamples.FieldByName['digito']);
        MemoA.Text:= Dados.TableSamples.FieldByName['a'];
        MemoB.Text:= Dados.TableSamples.FieldByName['b'];
        MemoC.Text:= Dados.TableSamples.FieldByName['c'];
        MemoAlpha.Text:= Dados.TableSamples.FieldByName['alpha'];
        MemoBeta.Text:= Dados.TableSamples.FieldByName['beta'];
        MemoGamma.Text:= Dados.TableSamples.FieldByName['gamma'];
        MemoVolume.Text:= Dados.TableSamples.FieldByName['volume'];
        MemoSistemaCristalino.Text:= Dados.TableSamples.FieldByName
          ['sistema_cristalino'];
        ChartDifracao.ClearSeries;
        ChartDifracao.AddSeries(SelectBlobFieldToChartSeries('difracao',
          'arquivo_difracao', Dados.TableSamples.FieldByName['especie'], Dados.TableSamples.
            FieldByName['rruff_id'], Dados.TableSamples.FieldByName['digito'],
              EmptyStr));
      end;
    end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'chemistry WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxQuimicaDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxQuimicaDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxQuimicaDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'raman WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxRamanDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxRamanDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxRamanDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'varredura WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxVarreduraDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxVarreduraDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxVarreduraDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'infravermelho WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1)) ;');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxInfravermelhoDigito.Items.IndexOf(Dados.TableSamples.FieldByName
        ['digito']) < 0 then
      ComboboxInfravermelhoDigito.Items.Append(Dados.TableSamples.FieldByName
        ['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxInfravermelhoDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT digito FROM '+
      'difracao WHERE rruff_id="'+Sample_id+
        '" ORDER BY (1/(digito+1));');
    if Dados.TableSamples.MoveFirst then
    While not Dados.TableSamples.EOF do
    begin
      if ComboboxDifracaoDigito.Items.IndexOf(Dados.TableSamples.FieldByName['digito'])
        < 0 then
      ComboboxDifracaoDigito.Items.Append(Dados.TableSamples.FieldByName['digito']);
      Dados.TableSamples.Next;
    end;
    //ComboboxDifracaoDigito.Items.Append(AdicionarAmostra);

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT direcao FROM raman WHERE '+
      'rruff_id="'+Sample_id+'" ;');
    if Dados.TableSamples.MoveFirst then
    begin
      While not Dados.TableSamples.EOF do
      begin
        if ComboboxDirecaoLaser.Items.IndexOf(Dados.TableSamples.FieldByName['direcao'])
          < 0 then
        ComboboxDirecaoLaser.Items.Append(Dados.TableSamples.FieldByName['direcao']);
        Dados.TableSamples.Next;
      end;
    end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT DISTINCT comprimento_onda FROM '+
      'varredura WHERE rruff_id="'+Sample_id+'" ;');
    if Dados.TableSamples.MoveFirst then
    begin
      While not Dados.TableSamples.EOF do
      begin
        if ComboboxVarreduraOnda.Items.IndexOf(Dados.TableSamples.FieldByName
          ['comprimento_onda']) < 0 then
        ComboboxVarreduraOnda.Items.Append(Dados.TableSamples.FieldByName[
          'comprimento_onda']);
        Dados.TableSamples.Next;
      end;
    end;

end;

procedure TFormFichaAmostra.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;

procedure TFormFichaAmostra.ComboBoxDirecaoLaserChange(Sender: TObject);
begin
  ChartRaman.ClearSeries;
  ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman', 'arquivo_raman',
    EmptyStr, MemoAmostraSample.Text, ComboboxRamanDigito.Text,
      ComboboxDirecaoLaser.Text));
end;

procedure TFormFichaAmostra.ActionComboboxDigitoChangeExecute(Sender: TObject);
begin
  case PageControlSample.TabIndex of
  1:begin end;
  2:begin
    ChartRaman.ClearSeries;
    ChartRaman.AddSeries(SelectBlobFieldToChartSeries('raman', 'arquivo_raman',
      EmptyStr, MemoAmostraSample.Text, ComboboxRamanDigito.Text,
        ComboboxDirecaoLaser.Text));
    end;
  3:begin
    ChartBroadScan.ClearSeries;
    ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
      'arquivo_varredura', EmptyStr, MemoAmostraSample.Text,
        ComboboxVarreduraDigito.Text, ComboboxVarreduraOnda.Text));
    end;
  4:begin
    ChartInfravermelho.ClearSeries;
    ChartInfravermelho.AddSeries(SelectBlobFieldToChartSeries('infravermelho',
      'arquivo_infravermelho', EmptyStr, MemoAmostraSample.Text,
        ComboboxInfravermelhoDigito.Text, EmptyStr));
    end;
  5:begin
    ChartDifracao.ClearSeries;
    ChartDifracao.AddSeries(SelectBlobFieldToChartSeries('difracao',
      'arquivo_difracao', EmptyStr, MemoAmostraSample.Text,
        ComboboxDifracaoDigito.Text, EmptyStr));
    end;
  end;
end;

procedure TFormFichaAmostra.ComboBoxVarreduraOndaChange(Sender: TObject);
begin
   ChartBroadScan.ClearSeries;
  ChartBroadScan.AddSeries(SelectBlobFieldToChartSeries('varredura',
    'arquivo_varredura', EmptyStr, MemoAmostraSample.Text,
      ComboboxVarreduraDigito.Text, ComboboxVarreduraOnda.Text));
end;

end.

