unit unitframelist;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls, ActnList,
  udatamodule, unitlanguage, Dialogs;

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
    RadioButtonAscii: TRadioButton;
    RadioButtonHard: TRadioButton;
    RadioButtonDens: TRadioButton;
    RadioButtonBirr: TRadioButton;
    RadioGroupOrdem: TRadioGroup;
    procedure ActionListClickExecute(Sender: TObject);
    procedure ActionRBClickExecute(Sender: TObject);
    procedure RadioGroupOrdemSelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    function SetOrder: TOrder;
    procedure ChangeLanguage;
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

procedure TFrameList.RadioGroupOrdemSelectionChanged(Sender: TObject);
begin
  RefreshList;
end;

function TFrameList.SetOrder: TOrder;
begin
  if RadioButtonAscii.Checked then
    Result := ASCII
  else
  if RadioButtonHard.Checked then
    Result := Hardness
  else
  if RadioButtonDens.Checked then
    Result := Density
  else
  if RadioButtonBirr.Checked then
    Result := Birrefringence;
end;

procedure TFrameList.ChangeLanguage;
begin
  LabelOrder.Caption:=Lang.Order;
  RadioButtonAscii.Caption:=Lang.Alphabetical;
  RadioButtonHard.Caption:=Lang.Hardness;
  RadioButtonDens.Caption:=Lang.Density;
  RadioButtonBirr.Caption:=Lang.Birefringence;
  LabelMinerals.Caption:=Lang.Minerals;
  LabelRecordsNumber.Caption:=Lang.Records;
end;

procedure TFrameList.RefreshList;
begin
  ListBoxMinerals.Clear;
  ListboxMinerals.Items.AddStrings(Dados.ReturnSimpleFiltered(FrameSimpleFilter.EditName.Text,
  FrameSimpleFilter.ComboBoxClass.Text, FrameSimpleFilter.ComboBoxSubclass.Text,
  FrameSimpleFilter.ComboBoxGroup.Text,  FrameSimpleFilter.ComboBoxSubGroup.Text,
  FrameSimpleFilter.EditOccur.Text, FrameSimpleFilter.EditAssoc.Text,
  FrameSimpleFilter.SpinEditFilterHardMin.Text, FrameSimpleFilter.SpinEditFilterMaxHard.Text,
  FrameSimpleFilter.FloatSpinEditFilterDensMin.Value, FrameSimpleFilter.
  FloatSpinEditFilterDensMax2.Value, setOrder));
  LabelRecordsNumber.Caption:=IntToStr(ListboxMinerals.Count)+Lang.Records;
  FormFichaEspecie.FormFrameFicha.RefreshComboboxes;
end;

end.

