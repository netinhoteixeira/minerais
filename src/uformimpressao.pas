unit uformimpressao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, StdCtrls, Spin, ComCtrls, ActnList, LR_View, UnitLanguage,
  unitconfigfile;

type

  { TFormImpressao }

  TFormImpressao = class(TForm)
    ActionChangeSelection: TAction;
    ActionHideForm: TAction;
    ActionOpenReport: TAction;
    ActionModifyReport: TAction;
    ActionPrint: TAction;
    ActionList1: TActionList;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    BitBtnAddReport: TBitBtn;
    BitBtnRemoveReport: TBitBtn;
    frPreview1: TfrPreview;
    GroupBox1: TGroupBox;
    GroupBoxListReports: TGroupBox;
    ImageList1: TImageList;
    Label1: TLabel;
    ListBoxReports: TListBox;
    OpenDialog1: TOpenDialog;
    RadioButtonLista: TRadioButton;
    RadioButtonSelecionado: TRadioButton;
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpinEdit1: TSpinEdit;
    ToolBar1: TToolBar;
    ToolButtonOpenFileReport: TToolButton;
    ToolButtonChangeReport: TToolButton;
    procedure ActionChangeSelectionExecute(Sender: TObject);
    procedure ActionHideFormExecute(Sender: TObject);
    procedure ActionModifyReportExecute(Sender: TObject);
    procedure ActionOpenReportExecute(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
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

procedure TFormImpressao.ActionPrintExecute(Sender: TObject);
var
  i: integer;
  numPags: string;
begin
  if Trim(Dados.DatabaseMineralFileName) <> EmptyStr then
  begin
    if Trim(Dados.Sqlite3DatasetPrinter.FileName) <> EmptyStr then
    begin
      numPags := EmptyStr;
      for i := 1 to Dados.frReport1.Pages.Count do
      begin
        //retirado em 20/10/15
        {if ((i) mod (2) > 0) then
        begin
          if CheckBox1.Checked then
            numPags := numPags + IntToStr(i);
          if i < Dados.frReport1.Pages.Count then
            numPags := numPags + ', ';
        end
        else
        begin
          if CheckBox2.Checked then
            numPags := numPags + IntToStr(i);
          if i < Dados.frReport1.Pages.Count then
            numPags := numPags + ', ';
        end;}
      end;
      Dados.frReport1.PrepareReport;
      Dados.frReport1.PrintPreparedReport(numPags, SpinEdit1.Value);
    end;
  end;
end;

procedure TFormImpressao.ActionModifyReportExecute(Sender: TObject);
begin
  Dados.frReport1.DesignReport;
end;

procedure TFormImpressao.ActionHideFormExecute(Sender: TObject);
begin
  FormImpressao.Visible := False;
end;

procedure TFormImpressao.ActionChangeSelectionExecute(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=1 then
  begin

  end
  else
  begin

  end;
end;

procedure TFormImpressao.ActionOpenReportExecute(Sender: TObject);
begin
  OpenDialog1.FileName := EmptyStr;
  if OpenDialog1.Execute then
    if OpenDialog1.FileName <> EmptyStr then
      if (FileExists(OpenDialog1.FileName)) then
      begin
        Dados.frReport1.LoadFromFile(OpenDialog1.FileName);
        Dados.frReport1.ShowReport;
      end;
end;

procedure TFormImpressao.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Dados.Sqlite3DatasetPrinter.Close();
end;

procedure TFormImpressao.FormCreate(Sender: TObject);
begin
  if SetLanguage(ConfigGetLanguage) then
  begin
    FormImpressao.Caption:=Lang.Print;
    ToolButtonChangeReport.Hint:=Lang.ChangePrintReport;
    ToolButtonOpenFileReport.Hint:=Lang.OpenFileReport;
    RadioButtonLista.Caption := Lang.AllFromTheList;
    RadioButtonSelecionado.Caption := Lang.SelectedMineral;
    Label1.Caption := Lang.NumberOfCopies;
    SpeedButton1.Hint := Lang.Print;
    SpeedButton2.Hint := Lang.Close;
  end;
end;

procedure TFormImpressao.FormShow(Sender: TObject);
var
  Diretorio: string;
begin
  if Dados.Sqlite3DatasetPrinter.Active then
    Dados.Sqlite3DatasetPrinter.Close;
  Dados.Sqlite3DatasetPrinter.FileName := Dados.DatabaseMineralFileName;
  Dados.Sqlite3DatasetPrinter.SQL := 'SELECT * FROM minerais ;';
  Dados.Sqlite3DatasetPrinter.Open();
  Diretorio := GetCurrentDir + '\Data\report1.lrf';
  if (FileExists(Diretorio)) then
  begin
    Dados.frReport1.LoadFromFile(Diretorio);
    Dados.frReport1.ShowReport;
  end
  else
    ShowMessage('O arquivo de gerar relatório "' + Diretorio + '" não foi encontrado.');
end;


{$R *.lfm}

end.
