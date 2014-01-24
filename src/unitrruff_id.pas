unit unitrruff_id;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, DbCtrls, EditBtn, ActnList, ComCtrls;

type

  { TFormAdicionaRruff }

  TFormAdicionaRruff = class(TForm)
    ActionSelecionar: TAction;
    ActionAdicionar: TAction;
    ActionList1: TActionList;
    BitBtn1: TBitBtn;
    BitBtnEraseData: TBitBtn;
    BitBtnCloseForm: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    EditNome: TEdit;
    EditSample_id: TEdit;
    EditAmostras: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxAdicionarRruff: TGroupBox;
    LabelDirecao: TLabel;
    Label2: TLabel;
    LabelAmostra: TLabel;
    Label3: TLabel;
    LabelEspecies: TLabel;
    ListBox1: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    procedure ActionAdicionarExecute(Sender: TObject);
    procedure BitBtnEraseDataClick(Sender: TObject);
    procedure EditAmostrasEditingDone(Sender: TObject);
    procedure EditSample_idEditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MemoEspecieEditingDone(Sender: TObject);
  private
    { private declarations }
  public
    DirecaoLaser:String;
    ComprimentoOnda:String;
    LocalAmostra: Integer; //usado para adicionar a amostra na tabela correta
    { public declarations }
  end;

var
  FormAdicionaRruff: TFormAdicionaRruff;

implementation
uses udatamodule;

procedure TFormAdicionaRruff.FormCreate(Sender: TObject);
begin

end;

procedure TFormAdicionaRruff.ActionAdicionarExecute(Sender: TObject);
var TextoAmostras:String;  I, FoundComma:Integer;
  CommaPlaces:Array[1..10] of Integer;
begin
  if EditNome.Text <> EmptyStr then
  begin
    Dados.TableMinerals:= Dados.DatabaseMinerals.GetTable('SELECT nome FROM minerais WHERE nome="'+
      EditNome.Text+'" ;');
    if Dados.TableMinerals.RowCount = 0 then
    begin
      if MessageDlg('Question', 'Deseja adicionar o mineral '+EditNome.Text+
        ' ao banco de dados?', mtConfirmation, [mbYes, mbNo],0) =
          mrYes then
          begin
            Dados.DatabaseMinerals.ExecSQL('INSERT INTO minerais (nome, dureza_min, dureza_max,'+
              ' densidade_min, densidade_max) VALUES ("'+EditNome.Text+
                '", "1.0", "10.0", "0.0","25.0");');
          end;
    end;
  end;
  if EditSample_id.Text <> EmptyStr then
  begin
    if EditAmostras.Text <> EmptyStr then
    begin
      ///////////////procedimento para adicionar multiplas amostras
      FoundComma:=0;
      for I:=1 to Length(EditAmostras.Text) do
      begin
        TextoAmostras:=Copy(EditAmostras.Text,I,1);
        if TextoAmostras = ',' then
        begin
          Inc(FoundComma);
          CommaPlaces[FoundComma]:=I;
        end;
      end;
      CommaPlaces[FoundComma+1]:=I+1;
      //////////////////////////////
      Case LocalAmostra of
      1:begin
          if FoundComma = 0 then
          begin
          Dados.DatabaseSamples.ExecSQL('INSERT INTO chemistry (especie, rruff_id,'+
            'digito) VALUES ("'+EditNome.Text+'","'+EditSample_id.Text+'", "'
               +EditAmostras.Text+'");');
          Listbox1.Items.Append(EditSample_id.Text+' - '+Trim(EditAmostras.Text));
          end
          else
          begin
          For I:=1 to (FoundComma +1) do
          begin
            TextoAmostras:= Trim(Copy(EditAmostras.Text,
                 CommaPlaces[I]-1, 1));
            Dados.DatabaseSamples.ExecSQL('INSERT INTO chemistry (especie, rruff_id,'+
              'digito) VALUES ("'+EditNome.Text+'","'+EditSample_id.Text+'", "'
                +TextoAmostras+'");');
            Listbox1.Items.Append(EditSample_id.Text+' - '+TextoAmostras);
          end;
          end;
        end;
      2:begin
        if FoundComma = 0 then
          begin
          Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
            'digito, direcao) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'","Depolarizado");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
            'digito, direcao) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'","0.000");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
            'digito, direcao) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'","45.000 ccw");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
            'digito, direcao) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'","90.000 ccw");');
          Listbox1.Items.Append(EditSample_id.Text+' - '+Trim(EditAmostras.Text));
          end
          else
          begin
             For I:=1 to (FoundComma)+1 do
             begin
               TextoAmostras:= Trim(Copy(EditAmostras.Text,
                 CommaPlaces[I]-1, 1));
               Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
                 'digito, direcao) VALUES ("'+EditNome.Text+'","'+
                   EditSample_id.Text+'", "'+TextoAmostras+'","Depolarizado");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
                  'digito, direcao) VALUES ("'+EditNome.Text+'","'+
                    EditSample_id.Text+'", "'+TextoAmostras+'","0.000");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
                  'digito, direcao) VALUES ("'+EditNome.Text+'","'+
                    EditSample_id.Text+'", "'+TextoAmostras+'","45.000 ccw");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
                  'digito, direcao) VALUES ("'+EditNome.Text+'","'+
                    EditSample_id.Text+'", "'+TextoAmostras+'","90.000 ccw");');
                Listbox1.Items.Append(EditSample_id.Text+' - '+TextoAmostras);
             end;
          end;
        end;
      3:begin
        if FoundComma = 0 then
        begin
          Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
            'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'", "514 nm");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
            'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'", "532 nm");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
            'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'", "580 nm");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
            'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'", "732nm");');
          Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
            'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
               EditSample_id.Text+'", "'+EditAmostras.Text+'", "780 nm");');
          Listbox1.Items.Append(EditSample_id.Text+' - '+Trim(EditAmostras.Text));
        end
        else
        begin
           For I:=1 to (FoundComma)+1 do
             begin
               TextoAmostras:= Trim(Copy(EditAmostras.Text,
                 CommaPlaces[I]-1, 1));
               Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
                 'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
                   EditSample_id.Text+'", "'+TextoAmostras+'", "514 nm");');
               Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
                 'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
                   EditSample_id.Text+'", "'+TextoAmostras+'", "532 nm");');
               Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
                 'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
                   EditSample_id.Text+'", "'+TextoAmostras+'", "580 nm");');
               Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
                 'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
                   EditSample_id.Text+'", "'+TextoAmostras+'", "732nm");');
               Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
                 'digito, comprimento_onda) VALUES ("'+EditNome.Text+'","'+
                   EditSample_id.Text+'", "'+TextoAmostras+'", "780 nm");');
               Listbox1.Items.Append(EditSample_id.Text+' - '+TextoAmostras);
             end;
        end;
        end;
      4:begin
        if FoundComma = 0 then
        begin
          Dados.DatabaseSamples.ExecSQL('INSERT INTO infravermelho (especie, rruff_id,'+
            'digito) VALUES ("'+EditNome.Text+'","'+EditSample_id.Text+'", "'
               +EditAmostras.Text+'");');
          Listbox1.Items.Append(EditSample_id.Text+' - '+Trim(EditAmostras.Text));
        end
        else
        begin
          For I:=1 to (FoundComma)+1 do
          begin
            TextoAmostras:= Trim(Copy(EditAmostras.Text,
            CommaPlaces[I]-1, 1));
            Dados.DatabaseSamples.ExecSQL('INSERT INTO infravermelho (especie, rruff_id,'+
            'digito) VALUES ("'+EditNome.Text+'","'+EditSample_id.Text+'", "'
               +TextoAmostras+'");');
            Listbox1.Items.Append(EditSample_id.Text+' - '+TextoAmostras);
          end;
        end;
      end;
      5:begin
      if FoundComma = 0 then
      begin
          Dados.DatabaseSamples.ExecSQL('INSERT INTO difracao (especie, rruff_id,'+
            'digito) VALUES ("'+EditNome.Text+'","'+EditSample_id.Text+'", "'
              +EditAmostras.Text+'");');
          Listbox1.Items.Append(EditSample_id.Text+' - '+Trim(EditAmostras.Text));
      end
      else
      begin
        For I:=1 to (FoundComma)+1 do
        begin
          TextoAmostras:= Trim(Copy(EditAmostras.Text,
                 CommaPlaces[I]-1, 1));
          Dados.DatabaseSamples.ExecSQL('INSERT INTO difracao (especie, rruff_id,'+
            'digito) VALUES ("'+EditNome.Text+'","'+EditSample_id.Text+'", "'
              +TextoAmostras+'");');
          Listbox1.Items.Append(EditSample_id.Text+' - '+TextoAmostras);
        end;
      end;
       end;
      end;
     end;
     EditAmostras.Text:='';
    end
    else
      ShowMessage('Você deve especificar uma identificação para a amostra.');
end;

procedure TFormAdicionaRruff.BitBtnEraseDataClick(Sender: TObject);

  function LocateDigit(Sample_id:String): String;
  var J:Integer;
  begin
    for J:=0 to Length(Sample_id)-1 do // -1 ?
    begin
      if (Copy(Sample_id, J, 1) = '-' ) then
      begin
        Result:= Copy(Sample_id, J+1, (Length(Sample_id) - (J)) );
      end;
    end;
  end;
var I:Integer; StrList:TStringList;
begin
  StrList:=TStringList.Create;
  for I:=0 to Listbox1.Items.Count-1 do
  begin
    if Listbox1.Selected[I] = True then
    begin
      Case LocalAmostra of
        1:Dados.DatabaseSamples.ExecSQL('DELETE FROM chemistry WHERE rruff_id = "'+
          EditSample_id.Text+'" AND digito ="'+LocateDigit(Listbox1.Items.
            ValueFromIndex[I])+'" ;');
        2:Dados.DatabaseSamples.ExecSQL('DELETE FROM raman WHERE rruff_id = "'+
          EditSample_id.Text+'" AND digito ="'+LocateDigit(Listbox1.Items.
            ValueFromIndex[I])+'" ;');
        3:Dados.DatabaseSamples.ExecSQL('DELETE FROM varredura WHERE rruff_id = "'+
          EditSample_id.Text+'" AND digito ="'+LocateDigit(Listbox1.Items.
            ValueFromIndex[I])+'" ;');
        4:Dados.DatabaseSamples.ExecSQL('DELETE FROM infravermelho WHERE rruff_id = "'+
          EditSample_id.Text+'" AND digito ="'+LocateDigit(Listbox1.Items.
            ValueFromIndex[I])+'" ;');
        5:Dados.DatabaseSamples.ExecSQL('DELETE FROM difracao WHERE rruff_id = "'+
          EditSample_id.Text+'" AND digito ="'+LocateDigit(Listbox1.Items.
            ValueFromIndex[I])+'" ;');
      end;
    StrList.Add(Listbox1.Items.ValueFromIndex[I]);
    end;
  end;  ///corrigir
  for I:=0 to StrList.Count-1 do
  Listbox1.Items.Delete(Listbox1.Items.IndexOfName(StrList.ValueFromIndex[I]));
  StrList.Free;
end;

procedure TFormAdicionaRruff.EditAmostrasEditingDone(Sender: TObject);
begin

end;

procedure TFormAdicionaRruff.EditSample_idEditingDone(Sender: TObject);
begin

end;

procedure TFormAdicionaRruff.FormShow(Sender: TObject);
begin
  case LocalAmostra of
  1:begin
      Statusbar1.Panels.Items[0].Text:='Química';
      Combobox1.Enabled:=False;
      Combobox2.Enabled:=False;
  end;
  2:begin
    Statusbar1.Panels.Items[0].Text:='Espectroscopia RAMAN';
    Statusbar1.Panels.Items[1].Text:=DirecaoLaser;
    Combobox1.Enabled:=True;
    Combobox2.Enabled:=True;
  end;
  3:begin
    Statusbar1.Panels.Items[0].Text:='Varredura Ampla com Artefatos Espectrais';
    Statusbar1.Panels.Items[1].Text:=ComprimentoOnda;
    Combobox1.Enabled:=False;
    Combobox2.Enabled:=True;
  end;
  4:begin
    Statusbar1.Panels.Items[0].Text:='Espectro Infravermelho';
    Combobox1.Enabled:=False;
    Combobox2.Enabled:=False;
  end;
  5:begin
    Statusbar1.Panels.Items[0].Text:='Difração do Polvilho';
    Combobox1.Enabled:=False;
    Combobox2.Enabled:=False;
  end;
  end;
end;

procedure TFormAdicionaRruff.MemoEspecieEditingDone(Sender: TObject);
begin

end;

{ TFormAdicionaRruff }

{$R *.lfm}

end.

