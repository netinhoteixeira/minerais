unit unitaddsample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ActnList, Buttons, INIFiles, UnitLanguage;

type

  { TFormAddSample }

  TFormAddSample = class(TForm)
    ActionComboboxAnaliseChange: TAction;
    ActionRemoveSubSample: TAction;
    ActionRemoveSample: TAction;
    ActionAddSubSample: TAction;
    ActionAddSample: TAction;
    ActionList1: TActionList;
    BCLabelAddSample: TBCLabel;
    BCLabelExistingSamples: TBCLabel;
    BCLabelExistingSubSamples: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    BCPanel4: TBCPanel;
    ComboBoxAnalise: TComboBox;
    ComboBoxComprimentoOnda: TComboBox;
    ComboBoxDirecao: TComboBox;
    Edit1: TEdit;
    EditAmostras: TEdit;
    EditSample_id: TEdit;
    GroupBoxAdicionarAmostra: TGroupBox;
    LabelAnalysis: TLabel;
    LabelWaveLenght: TLabel;
    LabelID: TLabel;
    LabelSubsample: TLabel;
    LabelDirection: TLabel;
    ListBoxSamples: TListBox;
    ListBoxSubSamples: TListBox;
    ScrollBox2: TScrollBox;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonAddSample: TSpeedButton;
    SpeedButtonAddSubSample: TSpeedButton;
    procedure ActionAddSampleExecute(Sender: TObject);
    procedure ActionAddSubSampleExecute(Sender: TObject);
    procedure ActionComboboxAnaliseChangeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  Config: TIniFile;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormAddSample }

procedure TFormAddSample.ActionAddSampleExecute(Sender: TObject);
begin
  if Dados.DatabaseSampleFileName <> EmptyStr then
  begin
    if Trim(Edit1.Text) <> EmptyStr then
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
  if Trim(EditSample_id.Text) <> EmptyStr then
  begin
    if Trim(EditAmostras.Text) <> EmptyStr then
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
              if ComboBoxDirecao.Text = 'Todas' then
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
                  '", "' + EditAmostras.Text + '","' + ComboBoxComprimentoOnda.Text + '");');
            end
            else
            begin
              if ComboBoxDirecao.Text = 'Todas' then
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
                  '", "' + EditAmostras.Text + '","' + ComboBoxDirecao.Text + '");');
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
                if ComboBoxDirecao.Text = 'Todas' then
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
                    '","' + ComboBoxComprimentoOnda.Text + '");');
              end
              else
              begin
                if ComboBoxDirecao.Text = 'Todas' then
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
                    '","' + ComboBoxDirecao.Text + '");');
              end;
              ListboxSubSamples.Items.Append(EditSample_id.Text + ' - ' + TextoAmostras);
            end;
          end;
        end;
        2:
        begin
          if FoundComma = 0 then
          begin
            if ComboBoxComprimentoOnda.Text = 'Todas' then
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
                '", "' + ComboBoxComprimentoOnda.Text + '" );');
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
    end else ShowMessage('Escolha uma amostra antes de adicionar a subamostragem.');
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
      ComboBoxDirecao.Enabled:=False;
      ComboBoxComprimentoOnda.Enabled:=False;
    end;
    1:begin
      ComboBoxDirecao.Enabled:=True;
      ComboBoxComprimentoOnda.Enabled:=True;
    end;
    2:begin
      ComboBoxDirecao.Enabled:=False;
      ComboBoxComprimentoOnda.Enabled:=True;
    end;
    3:begin
      ComboBoxDirecao.Enabled:=False;
      ComboBoxComprimentoOnda.Enabled:=False;
    end;
    4:begin
      ComboBoxDirecao.Enabled:=False;
      ComboBoxComprimentoOnda.Enabled:=False;
    end;
  end;
end;

procedure TFormAddSample.FormCreate(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'Português')) then
  begin
    FormAddSample.Caption:=Lang.Add;
    BCLabelExistingSamples.Caption:=Lang.ExistingSamples;
    BCLabelAddSample.Caption:=Lang.AddSample;
    GroupboxAdicionarAmostra.Caption:=Lang.CreateSubSampling;
    LabelAnalysis.Caption:=Lang.TypeOfAnalysis;
    ComboboxAnalise.Items.Append(Lang.ChemichalAnalysis);
    ComboboxAnalise.Items.Append(Lang.RamanSpectroscopy);
    ComboboxAnalise.Items.Append(Lang.BroadScanWithSpectralArtifacts);
    ComboboxAnalise.Items.Append(Lang.InfraredSpectrum);
    ComboboxAnalise.Items.Append(Lang.MineralPowderDiffraction);
    LabelId.Caption:=Lang.Identification;
    LabelSubsample.Caption:=Lang.SubSamples;
    LabelDirection.Caption:=Lang.Direction;
    LabelWaveLenght.Caption:=Lang.Wavelength;
    BCLabelExistingSubSamples.Caption:=Lang.ExistingSamples;
    SpeedButtonAddSample.Hint:=Lang.AddSample;
    SpeedButtonAddSubSample.Hint:=Lang.CreateSubSampling;
    SpeedButtonClose.Hint:=Lang.Close;
  end;
  Config.Free;
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
  ListBoxSamples.Clear;
  if Dados.DatabaseSampleFileName <> EmptyStr then
  if FileExists(Dados.DatabaseSampleFileName) then
  if Dados.ChooseDatabase('amostra', Dados.DatabaseSampleFileName) then
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
end;

procedure TFormAddSample.RefreshListSubSample;
begin
  ListboxSubSamples.Items.Clear;
  if Trim(ListboxSamples.GetSelectedText) <> EmptyStr then
  begin
    EditSample_id.Text:=ListboxSamples.GetSelectedText;
    {Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
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
    }
    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM chemistry WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['rruff_id']+' - '+Dados.TableSamples.FieldByName['digito']+
            ' (Química)',
              TOBject(1));
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM raman WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['rruff_id']+' - '+Dados.TableSamples.FieldByName['digito']+
            ' (RAMAN)',
              TOBject(2));
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM varredura WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['rruff_id']+' - '+Dados.TableSamples.FieldByName['digito']+
            ' (Varredura)',
              TOBject(3));
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM infravermelho WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['rruff_id']+' - '+Dados.TableSamples.FieldByName['digito']+
            ' (Infravermelho)',
              TOBject(4));
          Dados.TableSamples.Next;
        end;

    Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM infravermelho WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['rruff_id']+' - '+Dados.TableSamples.FieldByName['digito']+
            ' (Difração)',
              TOBject(5));
          Dados.TableSamples.Next;
        end;

    {Dados.TableSamples:=Dados.DatabaseSamples.GetTable(
      'SELECT DISTINCT rruff_id, digito FROM rruff WHERE rruff_id ="'+ListboxSamples.
        GetSelectedText+'" ;');
    if Dados.TableSamples.Count > 0 then
      if Dados.TableSamples.MoveFirst then
        while (not Dados.TableSamples.EOF) do
        begin
          ListboxSubsamples.Items.AddObject(Dados.TableSamples.FieldByName
            ['digito']+' - Descrição', TOBject(0));
          Dados.TableSamples.Next;
        end;}
  end;

end;

end.
