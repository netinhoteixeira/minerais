unit unitremovesample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCImageButton, BCLabel, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ActnList;

type

  { TFormRemoveSample }

  TFormRemoveSample = class(TForm)
    ActionListboxSampleClick: TAction;
    ActionList1: TActionList;
    BCImageButton1: TBCImageButton;
    BCImageButton2: TBCImageButton;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCPanel1: TBCPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure ActionListboxSampleClickExecute(Sender: TObject);
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
  if Dados.DatabaseSampleFileName <> EmptyStr then
    if FileExists(Dados.DatabaseSampleFileName) then
      if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
        begin
          Dados.TableSamples :=Dados.DatabaseSamples.GetTable(
            'SELECT rruff_id FROM rruff ;');
          if Dados.TableSamples.Count > 0 then
            if Dados.TableSamples.MoveFirst then
              while (not Dados.TableSamples.EOF) do
                begin
                  Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']);
                  Dados.TableSamples.Next;
                end;

          Dados.TableSamples :=Dados.DatabaseSamples.GetTable(
            'SELECT DISTINCT rruff_id, digito FROM chemistry ;');
          if Dados.TableSamples.Count > 0 then
            if Dados.TableSamples.MoveFirst then
              while (not Dados.TableSamples.EOF) do
                begin
                  Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Química');
                  Listbox2.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Química - '+Dados.TableSamples.FieldByName['digito']);
                  Dados.TableSamples.Next;
                end;

          Dados.TableSamples :=Dados.DatabaseSamples.GetTable(
            'SELECT DISTINCT rruff_id, digito, direcao FROM raman ;');
          if Dados.TableSamples.Count > 0 then
            if Dados.TableSamples.MoveFirst then
              while (not Dados.TableSamples.EOF) do
                begin
                  Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Raman');
                  Listbox2.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Raman - '+Dados.TableSamples.FieldByName['digito']+
                  ' - '+Dados.TableSamples.FieldByName['direcao']);
                  Dados.TableSamples.Next;
                end;

          Dados.TableSamples :=Dados.DatabaseSamples.GetTable(
            'SELECT DISTINCT rruff_id, digito, comprimento_onda FROM varredura ;');
          if Dados.TableSamples.Count > 0 then
            if Dados.TableSamples.MoveFirst then
              while (not Dados.TableSamples.EOF) do
                begin
                  Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Varredura');
                  Listbox2.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Varredura - '+Dados.TableSamples.FieldByName['digito']+
                  ' - '+Dados.TableSamples.FieldByName['comprimento_onda']);
                  Dados.TableSamples.Next;
                end;

          Dados.TableSamples :=Dados.DatabaseSamples.GetTable(
            'SELECT DISTINCT rruff_id, digito FROM infravermelho ;');
          if Dados.TableSamples.Count > 0 then
            if Dados.TableSamples.MoveFirst then
              while (not Dados.TableSamples.EOF) do
                begin
                  Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Infravermelho');
                  Listbox2.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Infravermelho - '+Dados.TableSamples.FieldByName['digito']);
                  Dados.TableSamples.Next;
                end;

          Dados.TableSamples :=Dados.DatabaseSamples.GetTable(
            'SELECT DISTINCT rruff_id, digito FROM difracao ;');
          if Dados.TableSamples.Count > 0 then
            if Dados.TableSamples.MoveFirst then
              while (not Dados.TableSamples.EOF) do
                begin
                  Listbox1.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Difração');
                  Listbox2.Items.Add(Dados.TableSamples.FieldByName['rruff_id']+
                  ' - Difração - '+Dados.TableSamples.FieldByName['digito']);
                  Dados.TableSamples.Next;
                end;

        end;
end;

procedure TFormRemoveSample.ActionListboxSampleClickExecute(Sender: TObject);
begin
  {if Listbox1.GetSelectedText <> EmptyStr then
    begin
      Dados.TableSamples:=Dados.DatabaseSamples.GetTable('SELECT ');
    end;}
end;

end.

