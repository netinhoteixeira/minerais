unit unitadddatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, BGRAImageList, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ComCtrls, ActnList, Buttons;

type

  { TFormAddDatabase }

  TFormAddDatabase = class(TForm)
    ActionClose: TAction;
    ActionCreateDatabase: TAction;
    ActionList1: TActionList;
    BCLabel1: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionCreateDatabaseExecute(Sender: TObject);
  private
    { private declarations }
  public
    Tipo: string;
    { public declarations }
  end;

var
  FormAddDatabase: TFormAddDatabase;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormAddDatabase }

procedure TFormAddDatabase.ActionCreateDatabaseExecute(Sender: TObject);
var CurrentPath:String;
begin
  if Edit1.Text <> EmptyStr then
  begin
    if Tipo <> EmptyStr then
      if DirectoryExists(GetCurrentDir + '\Data') then
      begin
        CurrentPath:=GetCurrentDir + '\Data\';
        if FileExists(CurrentPath + Edit1.Text+'.s3db') then
        begin
          if Dados.ChooseDatabase(Tipo, CurrentPath + Edit1.Text+
            '.s3db') then
            ShowMessage('Já existe um banco de dados com esse nome.')
          else
            Dados.CreateDatabase(Tipo, CurrentPath + Edit1.Text+
              '.s3db');
        end
        else
          Dados.CreateDatabase(Tipo, CurrentPath + Edit1.Text+'.s3db');
      end
      else
      begin
        //MkDir(GetCurrentDir + '\Data');
        CurrentPath:=GetCurrentDir + '\' ;
        if FileExists(CurrentPath + Edit1.Text+'.s3db') then
        begin
          if Dados.ChooseDatabase(Tipo, CurrentPath + Edit1.Text+
            '.s3db') then
            ShowMessage('Já existe um banco de dados com esse nome.')
          else
            Dados.CreateDatabase(Tipo, CurrentPath + Edit1.Text+
              '.s3db');
        end
        else
        Dados.CreateDatabase(Tipo, CurrentPath + Edit1.Text+'.s3db');
      end;

    if Tipo = 'mineral' then
      Dados.DatabaseMineralFileName := CurrentPath + Edit1.Text+'.s3db'
    else
    if tipo = 'amostra' then
      Dados.DatabaseSampleFileName := CurrentPath + Edit1.Text+'.s3db';
    FormAddDatabase.Visible := False;
  end;
end;

procedure TFormAddDatabase.ActionCloseExecute(Sender: TObject);
begin
  FormAddDatabase.Visible:=False;
end;

end.
