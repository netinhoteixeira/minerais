unit unitremovesample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCImageButton, BCLabel, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ActnList, Buttons;

type

  { TFormRemoveSample }

  TFormRemoveSample = class(TForm)
    ActionRemoveSubSample: TAction;
    ActionRemoveSample: TAction;
    ActionListboxSampleClick: TAction;
    ActionList1: TActionList;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCPanel1: TBCPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure ActionListboxSampleClickExecute(Sender: TObject);
    procedure ActionRemoveSampleExecute(Sender: TObject);
    procedure ActionRemoveSubSampleExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormRemoveSample: TFormRemoveSample;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormRemoveSample }

procedure TFormRemoveSample.FormShow(Sender: TObject);
begin
  Listbox1.Clear;
  Listbox2.Clear;
  if Dados.DatabaseSampleFileName <> EmptyStr then
    if FileExists(Dados.DatabaseSampleFileName) then
      if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
      begin
        Dados.TableSamples := Dados.DatabaseSamples.GetTable(
          'SELECT rruff_id FROM rruff ;');
        if Dados.TableSamples.Count > 0 then
          if Dados.TableSamples.MoveFirst then
            while (not Dados.TableSamples.EOF) do
            begin
              Listbox1.Items.AddObject(Dados.TableSamples.FieldByName
                ['rruff_id'], TObject(0));
              Dados.TableSamples.Next;
            end;

        Dados.TableSamples := Dados.DatabaseSamples.GetTable(
          'SELECT DISTINCT rruff_id, digito FROM chemistry ;');
        if Dados.TableSamples.Count > 0 then
          if Dados.TableSamples.MoveFirst then
            while (not Dados.TableSamples.EOF) do
            begin
              if (Listbox1.Items.IndexOf(
                Dados.TableSamples.FieldByName['rruff_id']) > -1) then
                Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']);
              if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
                ['digito']) > -1) then
                Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
              Dados.TableSamples.Next;
            end;

        Dados.TableSamples := Dados.DatabaseSamples.GetTable(
          'SELECT DISTINCT rruff_id, digito FROM raman ;');
        if Dados.TableSamples.Count > 0 then
          if Dados.TableSamples.MoveFirst then
            while (not Dados.TableSamples.EOF) do
            begin
              if (Listbox1.Items.IndexOf(
                Dados.TableSamples.FieldByName['rruff_id']) > -1) then
                Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']);
              if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
                ['digito']) > -1) then
                Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
              Dados.TableSamples.Next;
            end;

        Dados.TableSamples := Dados.DatabaseSamples.GetTable(
          'SELECT DISTINCT rruff_id, digito FROM varredura ;');
        if Dados.TableSamples.Count > 0 then
          if Dados.TableSamples.MoveFirst then
            while (not Dados.TableSamples.EOF) do
            begin
              if (Listbox1.Items.IndexOf(
                Dados.TableSamples.FieldByName['rruff_id']) > -1) then
                Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']);
              if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
                ['digito']) > -1) then
                Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
              Dados.TableSamples.Next;
            end;

        Dados.TableSamples := Dados.DatabaseSamples.GetTable(
          'SELECT DISTINCT rruff_id, digito FROM infravermelho ;');
        if Dados.TableSamples.Count > 0 then
          if Dados.TableSamples.MoveFirst then
            while (not Dados.TableSamples.EOF) do
            begin
              if (Listbox1.Items.IndexOf(
                Dados.TableSamples.FieldByName['rruff_id']) > -1) then
                Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']);
              if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
                ['digito']) > -1) then
                Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
              Dados.TableSamples.Next;
            end;

        Dados.TableSamples := Dados.DatabaseSamples.GetTable(
          'SELECT DISTINCT rruff_id, digito FROM difracao ;');
        if Dados.TableSamples.Count > 0 then
          if Dados.TableSamples.MoveFirst then
            while (not Dados.TableSamples.EOF) do
            begin
              if (Listbox1.Items.IndexOf(
                Dados.TableSamples.FieldByName['rruff_id']) > -1) then
                Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']);
              if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
                ['digito']) > -1) then
                Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
              Dados.TableSamples.Next;
            end;
      end;
end;

procedure TFormRemoveSample.ActionListboxSampleClickExecute(Sender: TObject);
begin
  if Trim(Listbox1.GetSelectedText) <> EmptyStr then
  begin
    Listbox2.Clear;
    Dados.TableSamples := Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT digito FROM chemistry WHERE rruff_id="'+
        Listbox1.GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
            ['digito']) > -1) then
            Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples := Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT digito FROM raman WHERE rruff_id="'+
        Listbox1.GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
            ['digito']) > -1) then
            Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples := Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT digito FROM varredura WHERE rruff_id="'+
        Listbox1.GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
            ['digito']) > -1) then
            Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
          Dados.TableSamples.Next;
        end;

     Dados.TableSamples := Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT digito FROM infravermelho WHERE rruff_id="'+
        Listbox1.GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
            ['digito']) > -1) then
            Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
          Dados.TableSamples.Next;
        end;


     Dados.TableSamples := Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT digito FROM difracao WHERE rruff_id="'+
        Listbox1.GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          if (Listbox2.Items.IndexOf(Dados.TableSamples.FieldByName
            ['digito']) > -1) then
            Listbox2.Items.Add(Dados.TableSamples.FieldByName['digito']);
          Dados.TableSamples.Next;
        end;
  end;

end;

procedure TFormRemoveSample.ActionRemoveSampleExecute(Sender: TObject);
begin
  if Trim(Dados.DatabaseSampleFileName) <> EmptyStr then
    if Trim(Listbox1.GetSelectedText) <> EmptyStr then
    begin
      Dados.DatabaseSamples.ExecSQL('DELETE FROM rruff WHERE rruff_id="' +
        Listbox1.GetSelectedText + '" ;');
      Dados.DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE rruff_id="' +
        Listbox1.GetSelectedText + '" ;');
      Dados.DatabaseSamples.ExecSQL('DELETE FROM raman WHERE rruff_id="' +
        Listbox1.GetSelectedText + '" ;');
      Dados.DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE rruff_id="' +
        Listbox1.GetSelectedText + '" ;');
      Dados.DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE rruff_id="' +
        Listbox1.GetSelectedText + '" ;');
      Dados.DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE rruff_id="' +
        Listbox1.GetSelectedText + '" ;');
    end;

end;

procedure TFormRemoveSample.ActionRemoveSubSampleExecute(Sender: TObject);
begin
  if Trim(Dados.DatabaseSampleFileName) <> EmptyStr then
    if Trim(Listbox1.GetSelectedText) <> EmptyStr then
      if Trim(Listbox2.GetSelectedText) <> EmptyStr then
      begin
        Dados.DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE rruff_id="' +
          Listbox1.GetSelectedText + '" AND digito="' + Listbox2.GetSelectedText + '" ;');
        Dados.DatabaseSamples.ExecSQL('DELETE FROM raman WHERE rruff_id="' +
          Listbox1.GetSelectedText + '" AND digito="' + Listbox2.GetSelectedText + '" ;');
        Dados.DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE rruff_id="' +
          Listbox1.GetSelectedText + '" AND digito="' + Listbox2.GetSelectedText + '" ;');
        Dados.DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE rruff_id="' +
          Listbox1.GetSelectedText + '" AND digito="' + Listbox2.GetSelectedText + '" ;');
        Dados.DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE rruff_id="' +
          Listbox1.GetSelectedText + '" AND digito="' + Listbox2.GetSelectedText + '" ;');
      end;
end;

end.
