unit unitframelist;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls, ActnList,
  udatamodule;

type

  { TFrameList }

  TFrameList = class(TFrame)
    ActionRBClick: TAction;
    ActionListClick: TAction;
    ActionList1: TActionList;
    LabelMinerals: TLabel;
    LabelOrder: TLabel;
    LabelRecordsNumber: TLabel;
    ListBoxMinerals: TListBox;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioGroupOrdem: TRadioGroup;
    procedure ActionListClickExecute(Sender: TObject);
    procedure ActionRBClickExecute(Sender: TObject);
  private
    { private declarations }
  public
    function SetOrder: String;
    procedure RefreshList;
    { public declarations }
  end;

  var FrameList:TFrameList;

implementation
uses unitframesimplefilter, unitfichaespecie;
{$R *.lfm}

{ TFrameList }

procedure TFrameList.ActionListClickExecute(Sender: TObject);
begin
  FormFichaEspecie.FormFrameFicha.ViewMineralProp(ListboxMinerals.GetSelectedText);
end;

procedure TFrameList.ActionRBClickExecute(Sender: TObject);
begin
  RefreshList;
end;

function TFrameList.SetOrder: String;
begin
  if RadioButton1.Checked then
    Result := ' nome ASC'
  else
  if RadioButton2.Checked then
    Result := ' dureza_max'
  else
  if RadioButton3.Checked then
    Result := ' densidade_max';
end;

procedure TFrameList.RefreshList;
begin
  ListBoxMinerals.Clear;
  ListboxMinerals.Items.AddStrings(Dados.ReturnAllMinerals(SetOrder));
  LabelRecordsNumber.Caption:='Número de Registros: '+IntToStr(ListboxMinerals.Count);
end;

end.

