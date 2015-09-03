unit unitaddmineral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, Forms, Controls, Graphics,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Buttons, ActnList, IniFiles,
  SQLite3tablemod, unitLanguage;

type

  { TFormAddMineral }

  TFormAddMineral = class(TForm)
    Action1: TAction;
    ActionClearFields: TAction;
    ActionAdd: TAction;
    ActionList1: TActionList;
    BCPanel1: TBCPanel;
    EditClasse: TEdit;
    EditClasse_Cristalina: TEdit;
    EditDensidadeMax: TEdit;
    EditDensidadeMin: TEdit;
    EditDurezaMax: TEdit;
    EditDurezaMin: TEdit;
    EditFormula: TEdit;
    EditGrupo: TEdit;
    EditH_M: TEdit;
    EditNomeMineral: TEdit;
    EditSistema: TEdit;
    EditSubClasse: TEdit;
    EditSubGrupo: TEdit;
    LabelComposicao: TLabel;
    LabelDureza: TLabel;
    LabelDensidade: TLabel;
    LabelAlteracao: TLabel;
    LabelAngulo_2V: TLabel;
    LabelAplicacao: TLabel;
    LabelAssociacao: TLabel;
    LabelBirrefringencia: TLabel;
    LabelBrilho: TLabel;
    LabelClasse: TLabel;
    LabelClasse_Cristalina: TLabel;
    LabelClivagem: TLabel;
    LabelCor: TLabel;
    LabelCor_Interferencia: TLabel;
    LabelCor_Lamina: TLabel;
    LabelDifaneidade: TLabel;
    LabelDistincao: TLabel;
    LabelExtincao: TLabel;
    LabelFratura: TLabel;
    LabelGrupo: TLabel;
    LabelHabito: TLabel;
    LabelIndice_Refracao: TLabel;
    LabelLuminescencia: TLabel;
    LabelMagnetismo: TLabel;
    LabelNome: TLabel;
    LabelOcorrencia: TLabel;
    LabelRelevo: TLabel;
    LabelSimbologia: TLabel;
    LabelSInal_Elongacao: TLabel;
    LabelSinal_optico: TLabel;
    LabelSistema_Cristalino: TLabel;
    LabelSubClasse: TLabel;
    LabelSubGrupo: TLabel;
    LabelTraco: TLabel;
    MemoAlteracao: TMemo;
    MemoAngulo: TMemo;
    MemoAplicacao: TMemo;
    MemoAssociacao: TMemo;
    MemoBirrefringencia: TMemo;
    MemoBrilho: TMemo;
    MemoClivagem: TMemo;
    MemoCor: TMemo;
    MemoCorLamina: TMemo;
    MemoDifaneidade: TMemo;
    MemoDistincao: TMemo;
    MemoExtincao: TMemo;
    MemoFratura: TMemo;
    MemoHabito: TMemo;
    MemoIndiceRefracao: TMemo;
    MemoInterferencia: TMemo;
    MemoLuminescencia: TMemo;
    MemoMagnetismo: TMemo;
    MemoOcorrencia: TMemo;
    MemoRelevo: TMemo;
    MemoSinalElongacao: TMemo;
    MemoSinalOptico: TMemo;
    MemoTraco: TMemo;
    PageControlFicha: TPageControl;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    SpeedButtonAdd: TSpeedButton;
    SpeedButtonClear: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    TabSheetCristalografia: TTabSheet;
    TabSheetInf_Gerais: TTabSheet;
    TabSheetOticas: TTabSheet;
    TabSheetProp_Fisicas: TTabSheet;
    procedure Action1Execute(Sender: TObject);
    procedure ActionAddExecute(Sender: TObject);
    procedure ActionClearFieldsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButtonClearFieldsClick(Sender: TObject);
    procedure ToolButtonSaveClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DatabaseMinerals: TSQLiteDatabase;
  TableMinerals: TSQLiteTable;
  Erro:Boolean;
  FormAddMineral: TFormAddMineral;

  Config:TIniFile;

implementation

uses udatamodule, unitformconfigurations;

{$R *.lfm}

{ TFormAddMineral }

procedure TFormAddMineral.ToolButtonSaveClick(Sender: TObject);
var
  Erro: boolean;
begin
  Erro := False;
  if ((Trim(EditDurezaMin.Text) = EmptyStr) or (Trim(EditDurezaMax.Text) = EmptyStr)) then
    Erro := True;
  if ((Trim(EditDensidadeMin.Text) = EmptyStr) or (Trim(EditDensidadeMax.Text) = EmptyStr)) then
    Erro := True;
  if (Trim(EditNomeMineral.Text) = EmptyStr) then
    Erro := True;
  if Erro then
    ShowMessage('Preencha os campos "nome", "dureza" e "densidade" para salvar' +
      ' no banco de dados.')
  else
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT nome FROM minerais WHERE nome="' + EditNomeMineral.Text + '" ; ');
      if Dados.TableMinerals.Count > 0 then
        ShowMessage('Já existe um mineral com esse nome.')
      else
      begin
        EditDurezaMin.Text := StringReplace(EditDurezaMin.Text, ',', '.', []);
        EditDurezaMax.Text := StringReplace(EditDurezaMax.Text, ',', '.', []);
        EditDensidadeMin.Text := StringReplace(EditDensidadeMin.Text, ',', '.', []);
        EditDensidadeMax.Text := StringReplace(EditDensidadeMax.Text, ',', '.', []);
        DatabaseMInerals := TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
        TableMinerals := DatabaseMinerals.GetTable(
          'INSERT INTO minerais (nome, dureza_min, dureza_max, densidade_min, ' +
          'densidade_max ) VALUES ("' + EditNomeMineral.Text + '", "' + EditDurezaMin.Text + '",' +
          ' "' + EditDurezaMax.Text + '", "' + EditDensidadeMin.Text + '", "' + EditDensidadeMax.Text + '");');

        TableMinerals := DatabaseMinerals.GetTable('UPDATE minerais SET ' +
          'formula="' + EditFormula.Text + '", classe="' + EditClasse.Text +
          '", subclasse="' + EditSubclasse.Text + '", grupo="' + EditGrupo.Text +
          '", subgrupo="' + EditSubgrupo.Text + '", ocorrencia="' +
          MemoOcorrencia.Text + '", associacao="' + MemoAssociacao.Text +
          '", distincao=' + '"' + MemoDistincao.Text + '", alteracao="' +
          MemoAlteracao.Text + '", aplicacao="' + MemoAplicacao.Text + '", cor="' +
          MemoCor.Text + '", brilho="' + MemoBrilho.Text + '", clivagem="' +
          MemoClivagem.Text + '", fratura="' + MemoFratura.Text + '", ' +
          'magnetismo="' + MemoMagnetismo.Text + '", luminescencia="' +
          MemoLuminescencia.Text + '", difaneidade="' + MemoDifaneidade.Text + '", sinal_optico="' +
          MemoSinalOptico.Text + '", indice_refracao="' + MemoIndiceRefracao.Text + '", ' +
          'angulo ="' + MemoAngulo.Text + '", cor_interferencia="' + MemoInterferencia.Text +
          '", cor_lamina="' + MemoCorLamina.Text + '", sinal_elongacao="' +
          MemoSinalElongacao.Text + '", birrefringencia="' + MemoBirrefringencia.Text +
          '", relevo="' + MemoRelevo.Text + '", extincao="' + MemoExtincao.Text +
          '", sistema="' + EditSistema.Text + '", classe_cristalina="' +
          EditClasse_Cristalina.Text + '", h_m="' + EditH_M.Text + '", habito="' +
          MemoHabito.Text + '"  WHERE nome="' + EditNomeMineral.Text + '" ;');
      end;
    end;
  end;
end;

procedure TFormAddMineral.FormShow(Sender: TObject);
begin
  FormAddMineral.Caption := 'Adicionar Mineral - Banco de dados: ' +
    Dados.DatabaseMineralFileName;
end;

procedure TFormAddMineral.ToolButtonClearFieldsClick(Sender: TObject);
begin

end;

procedure TFormAddMineral.ActionAddExecute(Sender: TObject);
begin
  Erro := False;
  if ((Trim(EditDurezaMin.Text) = EmptyStr) or (Trim(EditDurezaMax.Text) = EmptyStr)) then
    Erro := True;
  if ((Trim(EditDensidadeMin.Text) = EmptyStr) or (Trim(EditDensidadeMax.Text) = EmptyStr)) then
    Erro := True;
  if (Trim(EditNomeMineral.Text) = EmptyStr) then
    Erro := True;
  if Erro then
    ShowMessage('Preencha os campos "nome", "dureza" e "densidade" para salvar' +
      ' no banco de dados.')
  else
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      Dados.TableMinerals := Dados.DatabaseMinerals.GetTable(
        'SELECT nome FROM minerais WHERE nome="' + EditNomeMineral.Text + '" ; ');
      if Dados.TableMinerals.Count > 0 then
        ShowMessage('Já existe um mineral com esse nome.')
      else
      begin
        EditDurezaMin.Text := StringReplace(EditDurezaMin.Text, ',', '.', []);
        EditDurezaMax.Text := StringReplace(EditDurezaMax.Text, ',', '.', []);
        EditDensidadeMin.Text := StringReplace(EditDensidadeMin.Text, ',', '.', []);
        EditDensidadeMax.Text := StringReplace(EditDensidadeMax.Text, ',', '.', []);
        DatabaseMInerals := TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
        TableMinerals := DatabaseMinerals.GetTable(
          'INSERT INTO minerais (nome, dureza_min, dureza_max, densidade_min, ' +
          'densidade_max ) VALUES ("' + EditNomeMineral.Text + '", "' + EditDurezaMin.Text + '",' +
          ' "' + EditDurezaMax.Text + '", "' + EditDensidadeMin.Text + '", "' + EditDensidadeMax.Text + '");');

        TableMinerals := DatabaseMinerals.GetTable('UPDATE minerais SET ' +
          'formula="' + EditFormula.Text + '", classe="' + EditClasse.Text +
          '", subclasse="' + EditSubclasse.Text + '", grupo="' + EditGrupo.Text +
          '", subgrupo="' + EditSubgrupo.Text + '", ocorrencia="' +
          MemoOcorrencia.Text + '", associacao="' + MemoAssociacao.Text +
          '", distincao=' + '"' + MemoDistincao.Text + '", alteracao="' +
          MemoAlteracao.Text + '", aplicacao="' + MemoAplicacao.Text + '", cor="' +
          MemoCor.Text + '", brilho="' + MemoBrilho.Text + '", clivagem="' +
          MemoClivagem.Text + '", fratura="' + MemoFratura.Text + '", ' +
          'magnetismo="' + MemoMagnetismo.Text + '", luminescencia="' +
          MemoLuminescencia.Text + '", difaneidade="' + MemoDifaneidade.Text + '", sinal_optico="' +
          MemoSinalOptico.Text + '", indice_refracao="' + MemoIndiceRefracao.Text + '", ' +
          'angulo ="' + MemoAngulo.Text + '", cor_interferencia="' + MemoInterferencia.Text +
          '", cor_lamina="' + MemoCorLamina.Text + '", sinal_elongacao="' +
          MemoSinalElongacao.Text + '", birrefringencia="' + MemoBirrefringencia.Text +
          '", relevo="' + MemoRelevo.Text + '", extincao="' + MemoExtincao.Text +
          '", sistema="' + EditSistema.Text + '", classe_cristalina="' +
          EditClasse_Cristalina.Text + '", h_m="' + EditH_M.Text + '", habito="' +
          MemoHabito.Text + '"  WHERE nome="' + EditNomeMineral.Text + '" ;');
      end;
    end;
  end;
end;

procedure TFormAddMineral.Action1Execute(Sender: TObject);
begin
  FormAddMineral.Visible:=False;
end;

procedure TFormAddMineral.ActionClearFieldsExecute(Sender: TObject);
begin
    EditFormula.Caption:=EmptyStr;
    EditNomeMineral.Caption:=EmptyStr;
    EditClasse.Caption:= EmptyStr;
    EditSubClasse.Caption:= EmptyStr;
    EditGrupo.Caption:= EmptyStr;
    EditSubGrupo.Caption:= EmptyStr;
    MemoOcorrencia.Text:=EmptyStr;
    MemoAssociacao.Text:=EmptyStr;
    MemoDistincao.Text:=EmptyStr;
    MemoAlteracao.Text:=EmptyStr;
    MemoAplicacao.Text:=EmptyStr;

    EditDurezaMin.Text:=EmptyStr;
    EditDurezaMax.Text:=EmptyStr;
    EditDensidadeMin.Text:=EmptyStr;
    EditDensidadeMax.Text:=EmptyStr;

    MemoCor.Text:=EmptyStr;
    MemoTraco.Text:=EmptyStr;
    MemoBrilho.Text:=EmptyStr;
    MemoClivagem.Text:=EmptyStr;
    MemoFratura.Text:=EmptyStr;
    MemoMagnetismo.Text:=EmptyStr;
    MemoLuminescencia.Text:=EmptyStr;

    MemoDifaneidade.Text:=EmptyStr;
    MemoSinalOptico.Text:=EmptyStr;
    MemoIndiceRefracao.Text:=EmptyStr;
    MemoAngulo.Text:=EmptyStr;
    MemoInterferencia.Text:=EmptyStr;
    MemoCorLamina.Text:=EmptyStr;
    MemoSinalElongacao.Text:=EmptyStr;
    MemoBirrefringencia.Text:=EmptyStr;
    MemoRelevo.Text:=EmptyStr;
    MemoExtincao.Text:=EmptyStr;

    EditSistema.Text:=EmptyStr;
    EditClasse_Cristalina.Text:=EmptyStr;
    EditH_M.Text:=EmptyStr;
    MemoHabito.Text:=EmptyStr;
end;

procedure TFormAddMineral.FormCreate(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'Português')) then
  begin
    FormAddMineral.Caption:=Lang.AddMineral;
    TabSheetInf_Gerais.Caption:=Lang.GeneralInformation;
    TabSheetProp_Fisicas.Caption:=Lang.PhysicalProperties;
    TabSheetOticas.Caption:=Lang.OpticalProperties;
    TabSheetCristalografia.Caption:=Lang.Crystallography;
    LabelNome.Caption:=Lang.Name;
    LabelComposicao.Caption:=Lang.Composition;
    LabelClasse.Caption:=Lang.MineralClass;
    LabelSubClasse.Caption:=Lang.Subclass;
    LabelGrupo.Caption:=Lang.Group;
    LabelSubgrupo.Caption:=Lang.Subgroup;
    LabelOcorrencia.Caption:=Lang.Occurrence;
    LabelAssociacao.Caption:=Lang.Association;
    LabelDistincao.Caption:=Lang.Distinction;
    LabelAlteracao.Caption:=Lang.Alteration;
    LabelAplicacao.Caption:=Lang.Usage;
    LabelDureza.Caption:=Lang.Hardness;
    LabelDensidade.Caption:=Lang.Density;
    LabelCor.Caption:=Lang.Color;
    LabelTraco.Caption:=Lang.Streak;
    LabelBrilho.Caption:=Lang.Luster;
    LabelClivagem.Caption:=Lang.Cleavage;
    LabelFratura.Caption:=Lang.Fracture;
    LabelMagnetismo.Caption:=Lang.Magnetism;
    LabelLuminescencia.Caption:=Lang.Luminescence;
    LabelDifaneidade.Caption:=Lang.Diaphanousness;
    LabelSinal_Optico.Caption:=Lang.OpticalSignal;
    LabelIndice_Refracao.Caption:=Lang.RefractiveIndex;
    LabelAngulo_2V.Caption:=Lang.Angle2V;
    LabelCor_Interferencia.Caption:=Lang.InterferenceColor;
    LabelCor_Lamina.Caption:=Lang.BladeColor;
    LabelSinal_Elongacao.Caption:=Lang.SignElongation;
    LabelBirrefringencia.Caption:=Lang.Birefringence;
    LabelRelevo.Caption:=Lang.Relief;
    LabelSistema_Cristalino.Caption:=Lang.CrystallineSystem;
    LabelClasse_Cristalina.Caption:=Lang.CrystalineClass;
    LabelSimbologia.Caption:=Lang.Symbology;
    LabelHabito.Caption:=Lang.Habit;
    SpeedButtonAdd.Hint:=Lang.Add;
    SpeedButtonClear.Hint:=Lang.Clear;
    SpeedButtonClose.Hint:=Lang.Close;
  end;
  Config.Free;
end;

end.