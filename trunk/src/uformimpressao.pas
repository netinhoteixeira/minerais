unit uformimpressao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, LR_View;//, LR_View;

type

  { TFormImpressao }

  TFormImpressao = class(TForm)
    BitBtnImprimir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckGroup1: TCheckGroup;
    frPreview1: TfrPreview;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButtonSelecionado: TRadioButton;
    RadioButtonLista: TRadioButton;
    RadioButtonBranco: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure BitBtnImprimirClick(Sender: TObject);
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
begin
  if (CheckBox1.Checked) then
  Begin
      // dados.frReport1.FileName:=GetCurrentDir+'\Data\Report1.lrf';
       dados.frReport1.LoadFromFile(GetCurrentDir+'\Data\Report1.lrf');
       //dados.frReport1.PrepareReport;
       dados.frReport1.ShowReport;
       {if FileExists(dados.frReport1.FileName) then
       begin
            dados.frDBDataSet1.Open;
            dados.frReport1.PrepareReport;
            dados.frReport1.ShowReport;
            //FormImpressao.close;
       end
       else
       ShowMessage('Não foi possível encontrar o arquivo "Report1.lrf"'+#13+'A impressão foi cancelada.');
       }
  end;

end;

{ TFormImpressao }

{$R *.lfm}

end.

