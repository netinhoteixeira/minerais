unit unitframelist;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls, ActnList,
  udatamodule, unitlanguage, Dialogs, Menus;

type

  { TFrameList }

  TFrameList = class(TFrame)
    ActionRemoveMineral: TAction;
    ActionAddMineral: TAction;
    ActionRBClick: TAction;
    ActionListClick: TAction;
    ActionList1: TActionList;
    LabelMinerals: TLabel;
    LabelOrder: TLabel;
    LabelRecordsNumber: TLabel;
    ListBoxMinerals: TListBox;
    MenuItemRemove: TMenuItem;
    MenuItemAdd: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    RadioButtonAscii: TRadioButton;
    RadioButtonHard: TRadioButton;
    RadioButtonDens: TRadioButton;
    RadioButtonBirr: TRadioButton;
    RadioGroupOrdem: TRadioGroup;
    procedure ActionAddMineralExecute(Sender: TObject);
    procedure ActionListClickExecute(Sender: TObject);
    procedure ActionRBClickExecute(Sender: TObject);
    procedure ActionRemoveMineralExecute(Sender: TObject);
    procedure RadioGroupOrdemSelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    function SetOrder: TOrder;
    procedure ChangeLanguage;
    procedure RefreshList;
    { public declarations }
  end;

var
  FrameList: TFrameList;

implementation

uses unitframesimplefilter, unitfichaespecie, unitaddmineral, unitremovemineral;

{$R *.lfm}

{ TFrameList }

procedure TFrameList.ActionListClickExecute(Sender: TObject);
var
  I, ImCount: integer;
begin
  FormMain.FormFrameFicha.ViewMineralProp(ListboxMinerals.GetSelectedText);
  ImCount := Dados.GetCount(ListBoxMinerals.GetSelectedText);
  FormMain.FormFrameFicha.CreateImageButtons(ImCount);
end;

procedure TFrameList.ActionAddMineralExecute(Sender: TObject);
begin
  FormAddMineral.Show;
end;

procedure TFrameList.ActionRBClickExecute(Sender: TObject);
begin
  RefreshList;
end;

procedure TFrameList.ActionRemoveMineralExecute(Sender: TObject);
begin
  FormRemoveMineral.hide;
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
  LabelOrder.Caption := Lang.Order;
  RadioButtonAscii.Caption := Lang.Alphabetical;
  RadioButtonHard.Caption := Lang.Hardness;
  RadioButtonDens.Caption := Lang.Density;
  RadioButtonBirr.Caption := Lang.Birefringence;
  LabelMinerals.Caption := Lang.Minerals;
  LabelRecordsNumber.Caption := Lang.Records;
  MenuItemAdd.Caption := Lang.Add;
  MenuItemRemove.Caption := Lang.Remove;
end;

procedure TFrameList.RefreshList;
begin
  ListBoxMinerals.Clear;
  ListboxMinerals.Items.AddStrings(Dados.ReturnSimpleFiltered(
    FormMain.FrameSimpleFilter.EditName.Text,
    FormMain.FrameSimpleFilter.ComboBoxClass.Text,
    FormMain.FrameSimpleFilter.ComboBoxSubclass.Text,
    FormMain.FrameSimpleFilter.ComboBoxGroup.Text,
    FormMain.FrameSimpleFilter.ComboBoxSubGroup.Text,
    FormMain.FrameSimpleFilter.EditOccur.Text,
    FormMain.FrameSimpleFilter.EditAssoc.Text,
    FormMain.FrameSimpleFilter.SpinEditFilterHardMin.Text,
    FormMain.FrameSimpleFilter.SpinEditFilterMaxHard.Text,
    FormMain.FrameSimpleFilter.FloatSpinEditFilterDensMin.Value,
    FormMain.FrameSimpleFilter.FloatSpinEditFilterDensMax2.Value, setOrder));
  LabelRecordsNumber.Caption := IntToStr(ListboxMinerals.Count) + Lang.Records;
  FormMain.FormFrameFicha.RefreshComboboxes;
end;

end.
