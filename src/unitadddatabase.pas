unit unitadddatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ActnList, Buttons, unitconfigfile, UnitLanguage;

type

  { TFormAddDatabase }

  TFormAddDatabase = class(TForm)
    ActionClose: TAction;
    ActionCreateDatabase: TAction;
    ActionList1: TActionList;
    BCLabelSetDatabaseName: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    Edit1: TEdit;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonCreateDatabase: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionCreateDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end;

var
  FormAddDatabase: TFormAddDatabase;

implementation

uses udatamodule, unitselectdatabase;

{$R *.lfm}

{ TFormAddDatabase }

procedure TFormAddDatabase.ActionCreateDatabaseExecute(Sender: TObject);
begin
  if Trim(Edit1.Text) <> EmptyStr then
  begin
      if DirectoryExists(Dados.Caminho+'Data') then
      begin
        if FileExists(Dados.caminho+Edit1.Text+'.s3db') then
        begin
          if Dados.ValidateDatabase(Dados.Caminho+Edit1.Text+
            '.s3db') then
            ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
          else
          begin
            Dados.CreateDatabase(Dados.Caminho+Edit1.Text+
              '.s3db');
            FormSelectDatabase.Edit1.Text:= Dados.Caminho+Edit1.Text+
              '.s3db';
          end;
        end
        else
        begin
          Dados.CreateDatabase( Dados.Caminho+ Edit1.Text+'.s3db');
          FormSelectDatabase.Edit1.Text:= Dados.Caminho+Edit1.Text+
              '.s3db';
        end;
      end
      else
      begin
        if FileExists(Dados.Caminho+Edit1.Text+'.s3db') then
        begin
          if Dados.ValidateDatabase(Dados.Caminho+Edit1.Text+
            '.s3db') then
            ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
          else
          begin
            Dados.CreateDatabase(Dados.Caminho+ Edit1.Text+
              '.s3db');
            FormSelectDatabase.Edit1.Text:= Dados.Caminho+Edit1.Text+
              '.s3db';
          end;
        end
        else
        begin
          Dados.CreateDatabase(Dados.Caminho+Edit1.Text+'.s3db');
          FormSelectDatabase.Edit1.Text:= Dados.Caminho+Edit1.Text+
              '.s3db';
        end;
      end;
      Dados.DatabaseMineralFileName := Dados.Caminho+ Edit1.Text+'.s3db';
      ConfigSetDatabase(Dados.DatabaseMineralFileName);
    FormAddDatabase.Visible := False;
  end
  else
  ShowMessage(Lang.TypeTheNameOfDatabase);
end;

procedure TFormAddDatabase.FormCreate(Sender: TObject);
begin
  if SetLanguage(ConfigGetLanguage) then
  begin
    ChangeLanguage;
    //SpeedButtonApply.Hint:=Lang.Close;
  end;
end;

procedure TFormAddDatabase.FormShow(Sender: TObject);
begin
  Edit1.Text:=EmptyStr;
end;

procedure TFormAddDatabase.SpeedButtonCloseClick(Sender: TObject);
begin
  FormAddDatabase.Hide;
end;

procedure TFormAddDatabase.ChangeLanguage;
begin
   FormAddDatabase.Caption:=Lang.Add;
   BCLabelSetDatabaseName.Caption:=Lang.TypeTheNameOfDatabase;
   SpeedButtonCreateDatabase.Hint:=Lang.Confirm;
end;

procedure TFormAddDatabase.ActionCloseExecute(Sender: TObject);
begin
  FormAddDatabase.Visible:=False;
end;

end.
