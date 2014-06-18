unit unitaddsample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, BCImageButton, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ActnList;

type

  { TFormAddSample }

  TFormAddSample = class(TForm)
    ActionComboboxAnaliseChange: TAction;
    ActionRemoveSubSample: TAction;
    ActionRemoveSample: TAction;
    ActionAddSubSample: TAction;
    ActionAddSample: TAction;
    ActionList1: TActionList;
    BCImageButton1: TBCImageButton;
    BCImageButtonAddSample: TBCImageButton;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabel3: TBCLabel;
    BCPanel1: TBCPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBoxAnalise: TComboBox;
    Edit1: TEdit;
    EditAmostras: TEdit;
    EditSample_id: TEdit;
    GroupBoxAdicionarAmostra: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelAmostra: TLabel;
    LabelDirecao: TLabel;
    ListBoxSamples: TListBox;
    ListBoxSubSamples: TListBox;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    procedure ActionAddSampleExecute(Sender: TObject);
    procedure ActionAddSubSampleExecute(Sender: TObject);
    procedure ActionComboboxAnaliseChangeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBoxSamplesClick(Sender: TObject);
  private
    procedure RefreshListSample;
    procedure RefreshListSubSample;
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAddSample: TFormAddSample;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormAddSample }

procedure TFormAddSample.ActionAddSampleExecute(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName <> EmptyStr then
  begin
    if Edit1.Text <> EmptyStr then
    begin
      Dados.TableSamples := Dados.DatabaseSamples.GetTable(
        'SELECT rruff_id FROM rruff WHERE rruff_id ="' + Edit1.Text + '" ;');
      if Dados.TableSamples.Count > 0 then
        ShowMessage('Já existe amostra com essa identificação.')
      else
      begin
        Dados.AdicionaAmostra('rruff', EmptyStr, Edit1.Text,
          EmptyStr, EmptyStr, EmptyStr);
        RefreshListSample;
      end;
    end
    else
      ShowMessage('Você deve especificar uma identificação para a amostra.');

  end
  else
    ShowMessage('Não há banco de dados de amostras selecionado.');
end;

procedure TFormAddSample.ActionAddSubSampleExecute(Sender: TObject);
var
  TextoAmostras: string;
  I, FoundComma: integer;
  CommaPlaces: array[1..10] of integer;
begin
  if EditSample_id.Text <> EmptyStr then
  begin
    if EditAmostras.Text <> EmptyStr then
    begin
      ///////////////procedimento para adicionar multiplas amostras
      FoundComma := 0;
      for I := 1 to Length(EditAmostras.Text) do
      begin
        TextoAmostras := Copy(EditAmostras.Text, I, 1);
        if TextoAmostras = ',' then
        begin
          Inc(FoundComma);
          CommaPlaces[FoundComma] := I;
        end;
      end;
      CommaPlaces[FoundComma + 1] := I + 1;
      //////////////////////////////
      case ComboBoxAnalise.ItemIndex of
        0:
        begin
          if FoundComma = 0 then
          begin
            Dados.DatabaseSamples.ExecSQL('INSERT INTO chemistry (rruff_id,' +
              'digito) VALUES ("' + EditSample_id.Text + '", "' +
              EditAmostras.Text + '");');
            ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' +
              Trim(EditAmostras.Text));
          end
          else
          begin
            for I := 1 to (FoundComma + 1) do
            begin
              TextoAmostras :=
                Trim(Copy(EditAmostras.Text, CommaPlaces[I] - 1, 1));
              Dados.DatabaseSamples.ExecSQL('INSERT INTO chemistry (rruff_id,' +
                'digito) VALUES ("' + EditSample_id.Text + '", "' +
                TextoAmostras + '");');
              ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' + TextoAmostras);
            end;
          end;
        end;
        1:
        begin
          if FoundComma = 0 then
          begin
            if Trim(EditAmostras.Text) = '0' then
            begin
              if Combobox1.Text = 'Todas' then
              begin
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","514 nm");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","532 nm");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","580 nm");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","732 nm");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","780 nm");');
              end
              else
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","' + Combobox1.Text + '");');
            end
            else
            begin
              if Combobox1.Text = 'Todas' then
              begin
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","Depolarizado");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","0.000");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","45.000 ccw");');
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","90.000 ccw");');
              end
              else
                Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                  'digito, direcao) VALUES ("' + EditSample_id.Text +
                  '", "' + EditAmostras.Text + '","' + Combobox1.Text + '");');
            end;
            ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' +
              Trim(EditAmostras.Text));
          end
          else
          begin
            for I := 1 to (FoundComma) + 1 do
            begin
              TextoAmostras :=
                Trim(Copy(EditAmostras.Text, CommaPlaces[I] - 1, 1));
              if Trim(TextoAmostras) = '0' then
              begin
                if Combobox1.Text = 'Todas' then
                begin
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + EditAmostras.Text + '","514 nm");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + EditAmostras.Text + '","532 nm");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + EditAmostras.Text + '","580 nm");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + EditAmostras.Text + '","732 nm");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + EditAmostras.Text + '","780 nm");');
                end
                else
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + EditAmostras.Text +
                    '","' + Combobox1.Text + '");');
              end
              else
              begin
                if Combobox1.Text = 'Todas' then
                begin
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + TextoAmostras + '","Depolarizado");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + TextoAmostras + '","0.000");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + TextoAmostras + '","45.000 ccw");');
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman ( rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + TextoAmostras + '","90.000 ccw");');
                end
                else
                  Dados.DatabaseSamples.ExecSQL('INSERT INTO raman (rruff_id,' +
                    'digito, direcao) VALUES ("' +
                    EditSample_id.Text + '", "' + TextoAmostras +
                    '","' + Combobox1.Text + '");');
              end;
              ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' + TextoAmostras);
            end;
          end;
        end;
        2:
        begin
          if FoundComma = 0 then
          begin
            if Combobox2.Text = 'Todas' then
            begin
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + EditAmostras.Text + '", "514 nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura ( rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + EditAmostras.Text + '", "532 nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura ( rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + EditAmostras.Text + '", "580 nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + EditAmostras.Text + '", "732nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + EditAmostras.Text + '", "780 nm");');

            end
            else
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + EditAmostras.Text +
                '", "' + Combobox2.Text + '" );');
            ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' +
              Trim(EditAmostras.Text));
          end
          else
          begin
            for I := 1 to (FoundComma) + 1 do
            begin
              TextoAmostras :=
                Trim(Copy(EditAmostras.Text, CommaPlaces[I] - 1, 1));
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura ( rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + TextoAmostras + '", "514 nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura (rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + TextoAmostras + '", "532 nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura ( rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + TextoAmostras + '", "580 nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura ( rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + TextoAmostras + '", "732nm");');
              Dados.DatabaseSamples.ExecSQL('INSERT INTO varredura ( rruff_id,' +
                'digito, comprimento_onda) VALUES ("' +
                EditSample_id.Text + '", "' + TextoAmostras + '", "780 nm");');
              ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' + TextoAmostras);
            end;
          end;
        end;
        3:
        begin
          if FoundComma = 0 then
          begin
            Dados.DatabaseSamples.ExecSQL('INSERT INTO infravermelho (rruff_id,' +
              'digito) VALUES ("' + EditSample_id.Text + '", "' +
              EditAmostras.Text + '");');
            ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' +
              Trim(EditAmostras.Text));
          end
          else
          begin
            for I := 1 to (FoundComma) + 1 do
            begin
              TextoAmostras :=
                Trim(Copy(EditAmostras.Text, CommaPlaces[I] - 1, 1));
              Dados.DatabaseSamples.ExecSQL('INSERT INTO infravermelho (rruff_id,' +
                'digito) VALUES ("' + EditSample_id.Text + '", "' +
                TextoAmostras + '");');
              ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' + TextoAmostras);
            end;
          end;
        end;
        4:
        begin
          if FoundComma = 0 then
          begin
            Dados.DatabaseSamples.ExecSQL('INSERT INTO difracao (rruff_id,' +
              'digito) VALUES ("' + EditSample_id.Text + '", "' +
              EditAmostras.Text + '");');
            ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' +
              Trim(EditAmostras.Text));
          end
          else
          begin
            for I := 1 to (FoundComma) + 1 do
            begin
              TextoAmostras :=
                Trim(Copy(EditAmostras.Text, CommaPlaces[I] - 1, 1));
              Dados.DatabaseSamples.ExecSQL('INSERT INTO difracao ( rruff_id,' +
                'digito) VALUES ("' + EditSample_id.Text + '", "' +
                TextoAmostras + '");');
              ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' + TextoAmostras);
            end;
          end;
        end;
      end;
    end;
    EditAmostras.Text := '';
  end
  else
    ShowMessage('Você deve especificar uma identificação para a amostra.');
end;

procedure TFormAddSample.ActionComboboxAnaliseChangeExecute(Sender: TObject);
begin
  {Química
   Espectroscopia RAMAN
   Varredura
   Difração em Infravermelho
   Difração do Polvilho}
  case ComboboxAnalise.ItemIndex of
    0:begin
      Combobox1.Enabled:=False;
      Combobox2.Enabled:=False;
    end;
    1:begin
      Combobox1.Enabled:=True;
      Combobox2.Enabled:=False;
    end;
    2:begin
      Combobox1.Enabled:=False;
      Combobox2.Enabled:=True;
    end;
    3:begin
      Combobox1.Enabled:=False;
      Combobox2.Enabled:=False;
    end;
    4:begin
      Combobox1.Enabled:=False;
      Combobox2.Enabled:=False;
    end;
  end;
end;

procedure TFormAddSample.FormShow(Sender: TObject);
begin
  RefreshListSample;
end;

procedure TFormAddSample.ListBoxSamplesClick(Sender: TObject);
begin
  RefreshListSubSample;
end;

procedure TFormAddSample.RefreshListSample;
begin
  Dados.TableSamples := Dados.DatabaseSamples.GetTable('SELECT rruff_id FROM rruff ;');
  if Dados.TableSamples.Count > 0 then
    if Dados.TableSamples.MoveFirst then
      while (not Dados.TableSamples.EOF) do
      begin
        ListBoxSamples.Items.Add(Dados.TableSamples.Fields[0]);
        Dados.TableSamples.Next;
      end;
end;

procedure TFormAddSample.RefreshListSubSample;
begin
  ListboxSubSamples.Items.Clear;
  if ListboxSamples.GetSelectedText<> EmptyStr then
  begin
    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
    //obs: observar se o camando SELECT abaixo vai excluir subamostras
      'SELECT DISTINCT rruff_id FROM rruff WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['rruff_id']+' - Descrição', TOBject(0));
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM rruff WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['digito']+' - Descrição', TOBject(0));
          Dados.TableSamples.Next;
        end;
  end;

end;

end.
