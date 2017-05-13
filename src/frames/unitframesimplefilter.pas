unit unitframesimplefilter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls, Spin,
  ActnList, udatamodule, unitframelist, uframeimages, unitlanguage;

type

  { TFrameSimpleFilter }

  TFrameSimpleFilter = class(TFrame)
    ActionSpinChange: TAction;
    ActionETAssocEditingDOne: TAction;
    ActionETOccurEditingDone: TAction;
    ActionETNameEditingDone: TAction;
    ActionCBSubgroupChange: TAction;
    ActionCBGroupChange: TAction;
    ActionCBSubclassChange: TAction;
    ActionCBClassChange: TAction;
    ActionList1: TActionList;
    ComboBoxClass: TComboBox;
    ComboBoxGroup: TComboBox;
    ComboBoxSubclass: TComboBox;
    ComboBoxSubGroup: TComboBox;
    EditAssoc: TEdit;
    EditName: TEdit;
    EditOccur: TEdit;
    FloatSpinEditFilterDensMax2: TFloatSpinEdit;
    FloatSpinEditFilterDensMin: TFloatSpinEdit;
    LabelAssoc: TLabel;
    LabelClass: TLabel;
    LabelDens: TLabel;
    LabelGroup: TLabel;
    LabelHard: TLabel;
    LabelName: TLabel;
    LabelOccur: TLabel;
    LabelSubClass: TLabel;
    LabelSubGroup: TLabel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    SpinEditFilterHardMin: TSpinEdit;
    SpinEditFilterMaxHard: TSpinEdit;
    procedure ActionCBClassChangeExecute(Sender: TObject);
    procedure ActionCBGroupChangeExecute(Sender: TObject);
    procedure ActionCBSubclassChangeExecute(Sender: TObject);
    procedure ActionCBSubgroupChangeExecute(Sender: TObject);
    procedure ActionETAssocEditingDOneExecute(Sender: TObject);
    procedure ActionETNameEditingDoneExecute(Sender: TObject);
    procedure ActionETOccurEditingDoneExecute(Sender: TObject);
    procedure ActionSpinChangeExecute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure AddClasses;
    procedure AddGroups;
    procedure AddSubclasses;
    procedure AddSubgroups;
    procedure ChangeLanguage;
  end;

var StrName, StrOccur, StrAssoc:String; //usado para guardar valor da ultima pesquisa e evitar preencher a lista duas vezes seguidas
  FrameList: TFrameList;
  FrameImages: TFrameImage;
  FrameSimpleFilter:TFrameSimpleFilter;

implementation
uses unitfichaespecie;
{$R *.lfm}

{ TFrameSimpleFilter }

procedure TFrameSimpleFilter.ActionCBClassChangeExecute(Sender: TObject);
begin
  AddSubclasses;
  AddGroups;
  AddSubgroups;
  FormMain.FrameList.RefreshList;
  //FrameImages.RefreshImages; //RefreshImages deve ficar dentro de RefreshList
end;

procedure TFrameSimpleFilter.ActionCBGroupChangeExecute(Sender: TObject);
begin
  AddSubgroups;
  FormMain.FrameList.RefreshList;
end;

procedure TFrameSimpleFilter.ActionCBSubclassChangeExecute(Sender: TObject);
begin
  AddGroups;
  AddSubgroups;
  FormMain.FrameList.RefreshList;
end;

procedure TFrameSimpleFilter.ActionCBSubgroupChangeExecute(Sender: TObject);
begin
  FormMain.FrameList.RefreshList;
end;

procedure TFrameSimpleFilter.ActionETAssocEditingDOneExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditAssoc.Text <> strAssoc) then
       FormMain.FrameList.RefreshList;
    strAssoc := EditAssoc.Text;
  end;
end;

procedure TFrameSimpleFilter.ActionETNameEditingDoneExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditName.Text <> strName) then
      FormMain.FrameList.RefreshList;
    strName := EditName.Text;
  end;
end;

procedure TFrameSimpleFilter.ActionETOccurEditingDoneExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditAssoc.Text <> strAssoc) then
       FormMain.FrameList.RefreshList;
    strAssoc := EditAssoc.Text;
  end;
end;

procedure TFrameSimpleFilter.ActionSpinChangeExecute(Sender: TObject);
begin
  FormMain.FrameList.RefreshList;
end;

procedure TFrameSimpleFilter.AddClasses;
begin
  ComboBoxClass.Items:=Dados.SelectClasses;
end;

procedure TFrameSimpleFilter.AddGroups;
begin
  if (ComboBoxClass.Text = emptystr) then
  begin
    if (ComboBoxSubClass.Text = emptystr) then
    begin
      ComboBoxGroup.Items:=Dados.SelectGroups;
    end
    else
    begin
      ComboBoxGroup.Items:=Dados.SelectGroups_(ComboBoxSubClass.Text);
    end;
  end
  else
  begin
    if (ComboBoxSubClass.Text = EmptyStr) then
    begin
      ComboBoxGroup.Items:=Dados.SelectGroups(ComboBoxClass.Text);
    end
    else
    begin
      ComboBoxGroup.Items:=Dados.SelectGroups(
          ComboBoxClass.Text, ComboBoxSubclass.Text);
    end;
  end;
end;

procedure TFrameSimpleFilter.AddSubclasses;
begin
  if (ComboBoxClass.Text = emptystr) then
  begin
    ComboBoxSubclass.Items:=Dados.SelectSubclasses;
  end
  else
  begin
    ComboBoxSubclass.Items:=Dados.SelectSubclasses(ComboBoxClass.Text);
  end;
end;

procedure TFrameSimpleFilter.AddSubgroups;
begin
  ComboBoxSubGroup.Items:=Dados.SelectSubGroups(
      ComboBoxClass.Text, ComboBoxSubclass.Text, ComboBoxGroup.Text);
end;

procedure TFrameSimpleFilter.ChangeLanguage;
begin
  LabelName.Caption:=Lang.Name;
  LabelClass.Caption:=Lang.MineralClass;
  LabelSubClass.Caption:=Lang.Subclass;
  LabelGroup.Caption:=Lang.Group;
  LabelSubGroup.Caption:=Lang.Subgroup;
  LabelHard.Caption:=Lang.Hardness;
  LabelDens.Caption:=Lang.Density;
  LabelOccur.Caption:=Lang.Occurrence;
  LabelAssoc.Caption:=Lang.Association;
end;

end.

