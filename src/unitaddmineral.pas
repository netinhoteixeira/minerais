unit unitaddmineral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, DBCtrls, Buttons, ActnList, IniFiles,
  SQLite3tablemod, unitLanguage, frameficha;

type

  { TFormAddMineral }

  TFormAddMineral = class(TForm)
    ActionApply: TAction;
    ActionClearFields: TAction;
    ActionAdd: TAction;
    ActionList1: TActionList;
    Panel1: TPanel;
    SpeedButtonAdd: TSpeedButton;
    SpeedButtonClear: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionApplyExecute(Sender: TObject);
    procedure ActionAddExecute(Sender: TObject);
    procedure ActionClearFieldsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FrameFicha: TFrameFicha;
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

uses udatamodule, unitformconfigurations, unitfichaespecie;

{$R *.lfm}

{ TFormAddMineral }

procedure TFormAddMineral.FormShow(Sender: TObject);
begin
  FormAddMineral.Caption := 'Adicionar Mineral - Banco de dados: ' +
    Dados.DatabaseMineralFileName;
end;

procedure TFormAddMineral.ActionApplyExecute(Sender: TObject);
begin
  FormAddMineral.Visible:=False;
end;

procedure TFormAddMineral.ActionAddExecute(Sender: TObject);
begin
 if (Trim(FrameFicha.EditNomeMineral.Text) = EmptyStr) then
    ShowMessage('Preencha o campo "nome" para salvar' +
      ' no banco de dados.')
  else
  begin
    if FileExists(Dados.DatabaseMineralFileName) then
    begin
      if Dados.AddMineral(FrameFicha.EditNomeMineral.Text) = 0 then
      begin
        Dados.UpdateGeneralInfo(FrameFicha.EditNomeMineral.Text,
          FrameFicha.EditFormula.Text, FrameFicha.ComboboxClass.Text,
          FrameFicha.ComboboxSubclass.Text, FrameFicha.ComboboxGroup.Text,
          FrameFicha.ComboboxSubgroup.Text, FrameFicha.MemoOcorrencia.Text,
          FrameFicha.MemoAssociacao.Text, FrameFicha.MemoDistincao.Text,
          FrameFicha.MemoAlteracao.Text, FrameFicha.MemoAplicacao.Text);
        Dados.UpdatePhysicalProp(FrameFicha.SpinEditHardMin.Value,
          FrameFicha.SpinEditHardMax.Value, FrameFicha.SpinEditDensMin.Value,
          FrameFicha.SpinEditDensMax.Value, FrameFicha.MemoCor.Text,
          FrameFicha.MemoTraco.Text, FrameFicha.MemoBrilho.Text,
          FrameFicha.MemoClivagem.Text, FrameFicha.MemoFratura.Text,
          FrameFicha.MemoMagnetismo.Text, FrameFicha.MemoLuminescencia.Text,
          FrameFicha.MemoDiafaneidade.Text, FrameFicha.EditNomeMineral.Text);
        Dados.UpdateOpticalProp(FrameFicha.SpinEditRMin.Value,
          FrameFicha.SpinEditRMax.Value, FrameFicha.SpinEditBMin.Value,
          FrameFicha.SpinEditBMax.Value, FrameFicha.ComboboxOpticSign.Text,
          FrameFicha.MemoSinalOptico.Text, FrameFicha.MemoIndiceRefracao.Text,
          FrameFicha.MemoBirrefringencia.Text, FrameFicha.MemoInterferencia.Text,
          FrameFicha.MemoCorLamina.Text, FrameFicha.MemoSinalElongacao.Text,
          FrameFicha.MemoRelevo.Text, FrameFicha.MemoAngulo.Text,
          FrameFicha.MemoExtincao.Text, FrameFicha.EditNomeMineral.Text);
        Dados.UpdateCrystallography(FrameFicha.EditSistema.Text,
          FrameFicha.EditClasse_Cristalina.Text, FrameFicha.EditH_M.Text,
          FrameFicha.MemoHabito.Text, FrameFicha.EditNomeMIneral.Text);
        FormFichaEspecie.FrameList.RefreshList;
      end
      else
        ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
    end;
  end;
end;

procedure TFormAddMineral.ActionClearFieldsExecute(Sender: TObject);
begin
    FrameFicha.EditFormula.Caption:=EmptyStr;
    FrameFicha.EditNomeMineral.Caption:=EmptyStr;
    FrameFicha.ComboboxClass.Caption:= EmptyStr;
    FrameFicha.ComboboxSubclass.Caption:= EmptyStr;
    FrameFicha.ComboboxGroup.Caption:= EmptyStr;
    FrameFicha.ComboboxSubgroup.Caption:= EmptyStr;
    FrameFicha.MemoOcorrencia.Text:=EmptyStr;
    FrameFicha.MemoAssociacao.Text:=EmptyStr;
    FrameFicha.MemoDistincao.Text:=EmptyStr;
    FrameFicha.MemoAlteracao.Text:=EmptyStr;
    FrameFicha.MemoAplicacao.Text:=EmptyStr;

    FrameFicha.SpinEditHardMin.Value:=0;
    FrameFicha.SpinEditHardMax.Value:=10;
    FrameFicha.SpinEditDensMin.Value:=0.;
    FrameFIcha.SpinEditDensMax.Value:=30.;
    {to do: Colocar os campos novos de optica}

    FrameFicha.MemoCor.Text:=EmptyStr;
    FrameFicha.MemoTraco.Text:=EmptyStr;
    FrameFicha.MemoBrilho.Text:=EmptyStr;
    FrameFicha.MemoClivagem.Text:=EmptyStr;
    FrameFicha.MemoFratura.Text:=EmptyStr;
    FrameFicha.MemoMagnetismo.Text:=EmptyStr;
    FrameFicha.MemoLuminescencia.Text:=EmptyStr;

    FrameFicha.MemoDiafaneidade.Text:=EmptyStr;
    FrameFicha.MemoSinalOptico.Text:=EmptyStr;
    FrameFicha.MemoIndiceRefracao.Text:=EmptyStr;
    FrameFicha.MemoAngulo.Text:=EmptyStr;
    FrameFicha.MemoInterferencia.Text:=EmptyStr;
    FrameFicha.MemoCorLamina.Text:=EmptyStr;
    FrameFicha.MemoSinalElongacao.Text:=EmptyStr;
    FrameFicha.MemoBirrefringencia.Text:=EmptyStr;
    FrameFicha.MemoRelevo.Text:=EmptyStr;
    FrameFicha.MemoExtincao.Text:=EmptyStr;

    FrameFicha.EditSistema.Text:=EmptyStr;
    FrameFicha.EditClasse_Cristalina.Text:=EmptyStr;
    FrameFicha.EditH_M.Text:=EmptyStr;
    FrameFicha.MemoHabito.Text:=EmptyStr;
end;

procedure TFormAddMineral.FormCreate(Sender: TObject);
begin
  FrameFicha:= TFrameFicha.Create(FormAddMineral);
  with FrameFIcha do
  begin
    PanelButtonSave.Visible:=False;
    Parent:= FormAddMineral;
  end;
  FrameFicha.EditingMode(True);
  FrameFicha.ChangeLanguage;
end;

procedure TFormAddMineral.FormDestroy(Sender: TObject);
begin
  FrameFicha.Free;
end;

end.
