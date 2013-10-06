unit unitrruff_id;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons;

type

  { TFormRruff_id }

  TFormRruff_id = class(TForm)
    ComboBoxEspecies: TComboBox;
    ComboBoxRruff_id: TComboBox;
    GroupBoxAdicionarMineral: TGroupBox;
    GroupBoxAdicionarRruff: TGroupBox;
    LabelEspecies: TLabel;
    LabelRruff_id: TLabel;
    Label4: TLabel;
    MemoRruff_id: TMemo;
    Memo4: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButtonAdicionar: TSpeedButton;
  private
    { private declarations }
  public
    procedure MostrarForm(Especie:String; Rruff_id:String);
    { public declarations }
  end;

var
  FormRruff_id: TFormRruff_id;

implementation
uses udatamodule;

{ TFormRruff_id }
                         //adicionar variável fonte
procedure TFormRruff_id.MostrarForm(Especie: String; Rruff_id: String);
var Nomes:TStrings;
begin

  ComboboxEspecies.Items.Clear;
  ComboboxRruff_id.Items.Clear;
  if Especie <> EmptyStr then
  begin
     ComboboxEspecies.ItemIndex:=ComboboxEspecies.Items.Add(Especie);
     if Rruff_id <> EmptyStr then
     begin
        Nomes.AddStrings(Dados.ListaRruff_ids(Especie, Rruff_id));
       ComboboxRruff_id.Items.AddStrings(Nomes);
       ComboboxRruff_id.ItemIndex:=ComboboxRruff_id.Items.Add(Rruff_id);
       MemoRruff_Id.Text:=Rruff_id;
     end
     else
     begin
       ComboboxRruff_id.Items.AddStrings(Dados.ListaRruff_ids(Especie, EmptyStr));
     end;
  end
  else
  begin
    ComboboxEspecies.Items.AddStrings(Dados.ListaMinerais);
    ComboboxRruff_id.Items.AddStrings(Dados.ListaRruff_ids(EmptyStr, EmptyStr));
  end;
  FormRruff_id.Show;
end;

{$R *.lfm}

end.

