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
    function AddMineral: Boolean;
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

function TFormAddMineral.AddMineral: Boolean;
begin
  if FrameFicha.EditNomeMineral.Text <> EmptyStr then
  if Dados.AddMineral(FrameFicha.EditNomeMineral.Text) = 0 then
  begin
    Dados.UpdateGeneralInfo(FrameFicha.EditNomeMineral.Text,
      FrameFicha.EditFormula.Text, FrameFicha.ComboboxClass.Text,
      FrameFicha.ComboboxSubclass.Text, FrameFicha.ComboboxGroup.Text,
      FrameFicha.ComboboxSubgroup.Text, FrameFicha.MemoOcorrencia.Text,
      FrameFicha.MemoAssociacao.Text, FrameFicha.MemoDistincao.Text,
      FrameFicha.MemoAlteracao.Text, FrameFicha.MemoAplicacao.Text);
    Dados.UpdatePhysicalProp(FrameFicha.EditHardMin.Text,
      FrameFicha.EditHardMax.Text, FrameFicha.EditDensMin.Text,
      FrameFicha.EditDensMax.Text, FrameFicha.MemoCor.Text,
      FrameFicha.MemoTraco.Text, FrameFicha.MemoBrilho.Text,
      FrameFicha.MemoClivagem.Text, FrameFicha.MemoFratura.Text,
      FrameFicha.MemoMagnetismo.Text, FrameFicha.MemoLuminescencia.Text,
      FrameFicha.MemoDiafaneidade.Text, FrameFicha.EditNomeMineral.Text);
    Dados.UpdateOpticalProp( FrameFicha.EditBMin.Text,
      FrameFicha.EditBMax.Text, FrameFicha.ComboboxOpticSign.Text,
      FrameFicha.MemoSinalOptico.Text, FrameFicha.MemoIndiceRefracao.Text,
      FrameFicha.MemoBirrefringencia.Text, FrameFicha.MemoInterferencia.Text,
      FrameFicha.MemoCorLamina.Text, FrameFicha.MemoSinalElongacao.Text,
      FrameFicha.MemoRelevo.Text, FrameFicha.MemoAngulo.Text,
      FrameFicha.Edit2VMin.Text, FrameFicha.Edit2VMax.Text,
      FrameFicha.MemoExtincao.Text, FrameFicha.EditNomeMineral.Text);
    Dados.UpdateCrystallography(FrameFicha.EditSistema.Text,
      FrameFicha.EditClasse_Cristalina.Text, FrameFicha.EditH_M.Text,
      FrameFicha.MemoHabito.Text, FrameFicha.EditNomeMIneral.Text);
    Result:=True;
  end
  else
    result:=False;
end;

procedure TFormAddMineral.ActionApplyExecute(Sender: TObject);
begin
  FormAddMineral.Visible:=False;
  if AddMineral then
    FormFichaEspecie.FrameList.RefreshList;
end;

procedure TFormAddMineral.ActionAddExecute(Sender: TObject);
begin
 if (Trim(FrameFicha.EditNomeMineral.Text) = EmptyStr) then
    ShowMessage('Preencha o campo "nome" para salvar' +
      ' no banco de dados.')
 else
 begin
   if AddMineral then
   begin
     FrameFicha.ClearFields;
     FormFichaEspecie.FrameList.RefreshList;
   end
   else
     ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
 end;
 FrameFicha.ClearFields;
end;

procedure TFormAddMineral.ActionClearFieldsExecute(Sender: TObject);
begin
  FrameFicha.ClearFIelds;
end;

procedure TFormAddMineral.FormCreate(Sender: TObject);
begin
  FrameFicha:= TFrameFicha.Create(FormAddMineral);
  with FrameFIcha do
  begin
    PanelButtonSave.Visible:=False;
    TabSheetImagem.Visible:=False;
    Parent:= FormAddMineral;
    EditingMode(True);
    ChangeLanguage;
    RefreshComboboxes;
    PageControlFicha.Pages[4].Visible:= False;
  end;
end;

procedure TFormAddMineral.FormDestroy(Sender: TObject);
begin
  FrameFicha.Free;
end;

end.
