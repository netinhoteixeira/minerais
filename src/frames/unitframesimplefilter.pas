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
    procedure AddClasses;
    procedure AddGroups;
    procedure AddSubclasses;
    procedure AddSubgroups;
    procedure ChangeLanguage;
    { public declarations }
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
  ComboBoxClass.Items.Clear;
  ComboBoxClass.Items.add(emptystr);
  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
    'SELECT DISTINCT '+FieldClass+' FROM '+Dados.Table1+' ORDER BY '+FieldClass+' ASC');
  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName[FieldClass]) <> EmptyStr then
          ComboBoxClass.Items.Add(Dados.TableGeneral.FieldByName[FieldClass]);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFrameSimpleFilter.AddGroups;
begin
  ComboBoxGroup.Items.Clear;
  ComboBoxGroup.Items.add(EmptyStr);
  if (ComboBoxClass.Text = emptystr) then
  begin
    if (ComboBoxSubClass.Text = emptystr) then
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' ORDER BY '+FieldGroup+' ASC');
    end
    else
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' WHERE ('+FieldSubclass+' = "' +
        ComboBoxSubClass.Text + '")ORDER BY '+FieldGroup+' ASC');
    end;
  end
  else
  begin
    if (ComboBoxSubClass.Text = EmptyStr) then
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' WHERE ('+FieldClass+' = "' +
        ComboBoxClass.Text + '") ORDER BY '+FieldGroup+' ASC');
    end
    else
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT '+FieldGroup+' FROM '+Dados.Table1+' WHERE( '+FieldClass+' = "' +
        ComboBoxClass.Text + '" AND '+FieldSubclass+' = "' + ComboBoxSubClass.Text +
        '")ORDER BY '+FieldGroup+' ASC');
    end;
  end;

  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName[FieldGroup]) <> EmptyStr then
          ComboBoxGroup.Items.Add(Dados.TableGeneral.FieldByName[FieldGroup]);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFrameSimpleFilter.AddSubclasses;
begin
  ComboBoxSubClass.Items.Clear;
  ComboBoxSubClass.Items.Add(EmptyStr);
  if (ComboBoxClass.Text = emptystr) then
  begin
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT '+FieldSubclass+' FROM '+Dados.Table1+' ORDER BY '+FieldSubclass+' ASC');
  end
  else
  begin
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT '+FieldSubclass+' FROM '+Dados.Table1+' WHERE( '+FieldClass+' = "' +
      ComboBoxClass.Text + '") ORDER BY '+FieldSubclass+' ASC');
  end;
  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName[FieldSubclass]) <> EmptyStr then
          ComboBoxSubClass.Items.Add(Dados.TableGeneral.FieldByName[FieldSubclass]);
        Dados.TableGeneral.Next;
      end;
    end;
end;

procedure TFrameSimpleFilter.AddSubgroups;
begin
 ComboboxSubgroup.Items.Clear;
  ComboBoxSubgroup.Items.add(EmptyStr);
  if ComboBoxClass.Text = emptystr then
  begin
    if (ComboBoxSubclass.Text = emptystr) then
    begin
      if (ComboBoxGroup.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' ORDER BY '+FieldSubGroup+' ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldGroup+' = "' +
          ComboBoxGroup.Text + '") ORDER BY '+FieldSubGroup+' ASC');
      end;
    end
    else
    begin
      if (ComboBoxGroup.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldSubClass+' = "' +
          ComboBoxSubclass.Text + '") ORDER BY '+FieldSubGroup+' ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldSubClass+' = "' +
          ComboBoxSubclass.Text + '" and '+FieldGroup+' = "' + ComboBoxGroup.Text +
          '") ORDER BY '+FieldSubGroup+' ASC');
      end;
    end;
  end
  else
  begin
    if (ComboBoxSubclass.Text = emptystr) then
    begin
      if (ComboBoxGroup.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+' = "' +
          ComboBoxClass.Text + '") ORDER BY '+FieldSubGroup+' ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+'= "' +
          ComboBoxClass.Text + '" and '+FieldGroup+'= "' + ComboBoxGroup.Text +
          '") ORDER BY '+FieldSubGroup+' ASC');
      end;
    end
    else
    begin
      if (ComboBoxGroup.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+' = "' +
          ComboBoxClass.Text + '" and '+FieldSubClass+' = "' + ComboBoxSubclass.Text +
          '") ORDER BY '+FieldSubGroup+' ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT '+FieldSubGroup+' FROM '+Dados.Table1+' WHERE('+FieldClass+' = "' +
          ComboBoxClass.Text + '" and '+FieldSubclass+' = "' + ComboBoxSubclass.Text +
          '" and '+FieldGroup+' = "' + ComboBoxGroup.Text + '")ORDER BY '+FieldSubGroup+' ASC');
      end;
    end;
  end;

  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName[FieldSubGroup]) <> EmptyStr then
          ComboBoxSubgroup.Items.Add(Dados.TableGeneral.FieldByName[FieldSubGroup]);
        Dados.TableGeneral.Next;
      end;
    end;
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

