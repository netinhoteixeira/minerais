unit unitframesimplefilter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls, Spin,
  ActnList, udatamodule, unitframelist, unitframeimages;

type

  { TFrameSimpleFilter }

  TFrameSimpleFilter = class(TFrame)
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
  private
    { private declarations }
  public
    procedure AddClasses;
    procedure AddGroups;
    procedure AddSubclasses;
    procedure AddSubgroups;
    function MineralogyName:String;
    { public declarations }
  end;

var StrName, StrOccur, StrAssoc:String; //usado para guardar valor da ultima pesquisa e evitar preencher a lista duas vezes seguidas
  FrameList: TFrameList;
  FrameImages: TFrameImages;

implementation

{$R *.lfm}

{ TFrameSimpleFilter }

procedure TFrameSimpleFilter.ActionCBClassChangeExecute(Sender: TObject);
begin
  AddSubclasses;
  AddGroups;
  AddSubgroups;
  FrameList.RefreshList;
  //Mineralogy_Name.Caption:=MineralogyName;
  //FrameImages.RefreshImages; //RefreshImages deve ficar dentro de RefreshList
end;

procedure TFrameSimpleFilter.ActionCBGroupChangeExecute(Sender: TObject);
begin
  AddSubgroups;
  FrameList.RefreshList;
  //Mineralogy_Name.Caption:=MineralogyName;
end;

procedure TFrameSimpleFilter.ActionCBSubclassChangeExecute(Sender: TObject);
begin
  AddGroups;
  AddSubgroups;
  FrameList.RefreshList;
  //Mineralogy_Name.Caption:=MineralogyName;
end;

procedure TFrameSimpleFilter.ActionCBSubgroupChangeExecute(Sender: TObject);
begin
  FrameList.RefreshList;
  //Mineralogy_Name.Caption:=MineralogyName;
end;

procedure TFrameSimpleFilter.ActionETAssocEditingDOneExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditAssoc.Text <> strAssoc) then
      FrameList.RefreshList;
    strAssoc := EditAssoc.Text;
  end;
end;

procedure TFrameSimpleFilter.ActionETNameEditingDoneExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditName.Text <> strName) then
      FrameList.RefreshList;
    strName := EditName.Text;
  end;
end;

procedure TFrameSimpleFilter.ActionETOccurEditingDoneExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
  begin
    if (EditAssoc.Text <> strAssoc) then
      FrameList.RefreshList;
    strAssoc := EditAssoc.Text;
  end;
end;

procedure TFrameSimpleFilter.AddClasses;
begin
  ComboBoxClass.Items.Clear;
  ComboBoxClass.Items.add(emptystr);
  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
    'SELECT DISTINCT classe FROM '+Dados.Table1+' ORDER BY classe ASC');
  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['classe']) <> EmptyStr then
          ComboBoxClass.Items.Add(Dados.TableGeneral.FieldByName['classe']);
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
        'SELECT DISTINCT grupo FROM '+Dados.Table1+' ORDER BY grupo ASC');
    end
    else
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM '+Dados.Table1+' WHERE (subclasse = "' +
        ComboBoxSubClass.Text + '")ORDER BY grupo ASC');
    end;
  end
  else
  begin
    if (ComboBoxSubClass.Text = EmptyStr) then
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo from '+Dados.Table1+' WHERE (classe = "' +
        ComboBoxClass.Text + '") ORDER BY grupo ASC');
    end
    else
    begin
      Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
        'SELECT DISTINCT grupo FROM '+Dados.Table1+' WHERE( classe = "' +
        ComboBoxClass.Text + '" and subclasse = "' + ComboBoxSubClass.Text +
        '")ORDER BY grupo ASC');
    end;
  end;

  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['grupo']) <> EmptyStr then
          ComboBoxGroup.Items.Add(Dados.TableGeneral.FieldByName['grupo']);
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
      'SELECT DISTINCT subclasse FROM '+Dados.Table1+' ORDER BY subclasse ASC');
  end
  else
  begin
    Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(
      'SELECT DISTINCT subclasse FROM '+Dados.Table1+' WHERE( classe = "' +
      ComboBoxClass.Text + '") ORDER BY subclasse ASC');
  end;
  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['subclasse']) <> EmptyStr then
          ComboBoxSubClass.Items.Add(Dados.TableGeneral.FieldByName['subclasse']);
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
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(grupo = "' +
          ComboBoxGroup.Text + '") ORDER BY subgrupo ASC');
      end;
    end
    else
    begin
      if (ComboBoxGroup.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(subclasse = "' +
          ComboBoxSubclass.Text + '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(subclasse = "' +
          ComboBoxSubclass.Text + '" and grupo = "' + ComboBoxGroup.Text +
          '") ORDER BY subgrupo ASC');
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
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe = "' +
          ComboBoxClass.Text + '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe= "' +
          ComboBoxClass.Text + '" and grupo= "' + ComboBoxGroup.Text +
          '") ORDER BY subgrupo ASC');
      end;
    end
    else
    begin
      if (ComboBoxGroup.Text = emptystr) then
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe = "' +
          ComboBoxClass.Text + '" and subclasse = "' + ComboBoxSubclass.Text +
          '") ORDER BY subgrupo ASC');
      end
      else
      begin
        Dados.TableGeneral :=
          Dados.DatabaseMinerals.GetTable(
          'SELECT DISTINCT subgrupo FROM '+Dados.Table1+' WHERE(classe = "' +
          ComboBoxClass.Text + '" and subclasse = "' + ComboBoxSubclass.Text +
          '" and grupo = "' + ComboBoxGroup.Text + '")ORDER BY subgrupo ASC');
      end;
    end;
  end;

  if (Dados.TableGeneral.Count > 0) then
    if Dados.TableGeneral.MoveFirst then
    begin
      while (not Dados.TableGeneral.EOF) do
      begin
        if Trim(Dados.TableGeneral.FieldByName['subgrupo']) <> EmptyStr then
          ComboBoxSubgroup.Items.Add(Dados.TableGeneral.FieldByName['subgrupo']);
        Dados.TableGeneral.Next;
      end;
    end;
end;

function TFrameSimpleFilter.MineralogyName: String;
begin
  if (ComboBoxSubgroup.Text = EmptyStr) then
  begin
    if (ComboBoxGroup.Text = EmptyStr) then
    begin
      if (ComboBoxSubclass.Text = EmptyStr) then
      begin
        if (ComboBoxClass.Text = EmptyStr) then
        begin
          Result := 'Geral';
        end
        else
          Result := ComboBoxClass.Text;
      end
      else
        Result := ComboBoxSubclass.Text;
    end
    else
      Result := ComboBoxGroup.Text;
  end
  else
    Result := ComboBoxSubgroup.Text;
end;

end.
