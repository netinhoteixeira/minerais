unit unitaddmineral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, DBCtrls, Buttons, ActnList, IniFiles,
  unitLanguage, frameficha;

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
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
    FrameFicha1: TFrameFicha;
    function AddMineral: Boolean;
  public
    { public declarations }
  end;

var
  Erro:Boolean;
  FormAddMineral: TFormAddMineral;
  Config:TIniFile;

implementation

uses udatamodule, unitfichaespecie, unitframesimplefilter;

{$R *.lfm}

{ TFormAddMineral }


procedure TFormAddMineral.FormCreate(Sender: TObject);
begin

end;

procedure TFormAddMineral.FormShow(Sender: TObject);
begin
  FormAddMineral.Caption := 'Adicionar Mineral - Banco de dados: ' +
    Dados.DatabaseMineralFileName;
  FrameFicha1:= TFrameFicha.Create(FormAddMineral);
  with FrameFicha1 do
  begin
    FormMode:=Add;
    TabSheetImagem.Visible:=False;
    Parent:= FormAddMineral;
    EditingMode(True);
    RefreshComboboxes;
    PageControlFicha.Pages[4].Visible:= False;
  end;
end;

function TFormAddMineral.AddMineral: Boolean;
begin
  if FormAddMineral.FrameFicha1.EditMineralName.Text <> EmptyStr then
  if Dados.AddMineral(FormAddMineral.FrameFicha1.EditMineralName.Text) then
  begin
    Dados.UpdateGeneralInfo(FrameFicha1.EditMineralName.Text,
      FrameFicha1.EditComposition.Text, FrameFicha1.ComboboxClass.Text,
      FrameFicha1.ComboboxSubclass.Text, FrameFicha1.ComboboxGroup.Text,
      FrameFicha1.ComboboxSubgroup.Text, FrameFicha1.MemoOccurrence.Text,
      FrameFicha1.MemoAssociation.Text, FrameFicha1.MemoDistinction.Text,
      FrameFicha1.MemoAlteracao.Text, FrameFicha1.MemoAplicacao.Text);
    Dados.UpdatePhysicalProp(FrameFicha1.EditHardMin.Text,
      FrameFicha1.EditHardMax.Text, FrameFicha1.EditDensMin.Text,
      FrameFicha1.EditDensMax.Text, FrameFicha1.MemoCor.Text,
      FrameFicha1.MemoTraco.Text, FrameFicha1.MemoBrilho.Text,
      FrameFicha1.MemoClivagem.Text, FrameFicha1.MemoFratura.Text,
      FrameFicha1.MemoMagnetismo.Text, FrameFicha1.MemoLuminescencia.Text,
      FrameFicha1.EditMineralName.Text);
    Dados.UpdateOpticalProp(
      FrameFicha1.EditBMax.Text, FrameFicha1.ComboboxOpticSign.Text,
      FrameFicha1.MemoSinalOptico.Text, FrameFicha1.MemoIndiceRefracao.Text,
      FrameFicha1.MemoBirrefringencia.Text, {FrameFicha1.MemoInterferencia.Text,}
      FrameFicha1.MemoCorLamina.Text, FrameFicha1.MemoSinalElongacao.Text,
      FrameFicha1.MemoRelevo.Text, FrameFicha1.MemoAngulo.Text,
      FrameFicha1.MemoExtincao.Text, FrameFicha1.EditMineralName.Text);
    Dados.UpdateCrystallography(FrameFicha1.EditSistema.Text,
      FrameFicha1.EditClasse_Cristalina.Text, FrameFicha1.EditH_M.Text,
      FrameFicha1.MemoHabito.Text, FrameFicha1.EditMineralName.Text);
    Result:=True;
  end
  else
    result:=False;
end;

procedure TFormAddMineral.ActionApplyExecute(Sender: TObject);
begin
  if AddMineral then
    //FormMain.FrameList.RefreshList;
    FormMain.refresh;
  FormAddMineral.Visible:=False;
end;

procedure TFormAddMineral.ActionAddExecute(Sender: TObject);
begin
 if (Trim(FrameFicha1.EditMineralName.Text) = EmptyStr) then
    ShowMessage('Preencha o campo "nome" para salvar' +
      ' no banco de dados.')
 else
 begin
   if AddMineral then
   begin
     FrameFicha1.ClearFields;
     FormMain.FrameList.RefreshList;
   end
   else
     ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
 end;
 FrameFicha1.ClearFields;
end;

procedure TFormAddMineral.ActionClearFieldsExecute(Sender: TObject);
begin
  FrameFicha1.ClearFIelds;
end;

procedure TFormAddMineral.FormHide(Sender: TObject);
begin
   FrameFicha1.Free;
end;

procedure TFormAddMineral.FormDestroy(Sender: TObject);
begin

end;

end.
