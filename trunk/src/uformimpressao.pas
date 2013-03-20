unit uformimpressao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, Spin, LR_View;

type

  { TFormImpressao }

  TFormImpressao = class(TForm)
    BitBtn1: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnImprimir: TBitBtn;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckGroup1: TCheckGroup;
    frPreview1: TfrPreview;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioButtonSelecionado: TRadioButton;
    RadioButtonLista: TRadioButton;
    RadioButtonBranco: TRadioButton;
    RadioGroup1: TRadioGroup;
    SpinEdit1: TSpinEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  FormImpressao: TFormImpressao;

implementation
uses udatamodule;

{ TFormImpressao }

procedure TFormImpressao.BitBtnImprimirClick(Sender: TObject);
var i:Integer;
    numPags:String;
begin
  numPags:=EmptyStr;
  for i:=1 to Dados.frReport1.Pages.Count do
  begin
    //////// A vírgula pode gerar erro:
    if ((i)Mod(2) > 0) then
    begin
         if CheckBox1.Checked then
         numPags:=numPags+IntToStr(i);
         if i<Dados.frReport1.Pages.Count then numPags:=numPags+', ';
    end
    else
    begin
         if CheckBox2.Checked then
         numPags:=numPags+IntToStr(i);
         if i<Dados.frReport1.Pages.Count then numPags:=numPags+', ';
    end;
  end;
  Dados.frReport1.PrepareReport;
  Dados.frReport1.PrintPreparedReport(numPags, SpinEdit1.Value);
end;

procedure TFormImpressao.Button1Click(Sender: TObject);
begin
      if Dados.frReport1.PrepareReport then
      Dados.frReport1.ExportTo(TFrTNPDFExportFilter, 'C:\Minerais');
end;

procedure TFormImpressao.BitBtnCancelarClick(Sender: TObject);
begin
  FormImpressao.Visible:=False;
end;

procedure TFormImpressao.BitBtn1Click(Sender: TObject);
begin
  if (MessageDLG('Confirmar', 'É nescessário conhecimentos avançados para modificar o formato do relatório, deseja continuar?', mtConfirmation, [mbYes, mbCancel],0) = mrYes) then
  Dados.frReport1.DesignReport;
end;

procedure TFormImpressao.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
     Dados.Sqlite3DatasetPrinter.Close();
end;

procedure TFormImpressao.FormShow(Sender: TObject);
var Diretorio:String;
begin
     Dados.Sqlite3DatasetPrinter.Open();
     Diretorio:=GetCurrentDir+'\Data\report1.lrf';
  if (FileExists(Diretorio)) then
  Begin
       Dados.frReport1.LoadFromFile(Diretorio);
       Dados.frReport1.ShowReport;
  end
  else
      ShowMessage('O arquivo de impressão "'+Diretorio+'" nao foi encontrado.');
end;

{ TFormImpressao }

{$R *.lfm}

end.

