unit uformadddatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ActnList, Buttons, ExtCtrls, unitconfigfile, UnitLanguage;

type

  { TFormAddDatabase }

  TFormAddDatabase = class(TForm)
    ActionClose: TAction;
    ActionCreateDatabase: TAction;
    ActionList1: TActionList;
    Edit1: TEdit;
    LabelSetDatabaseName: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonCreateDatabase: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionCreateDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonCloseClick(Sender: TObject);
  private
    procedure ChangeLanguage;
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAddDatabase: TFormAddDatabase;

implementation
uses udatamodule, uformselectdatabase;

{$R *.lfm}

{ TFormAddDatabase }

procedure TFormAddDatabase.ActionCreateDatabaseExecute(Sender: TObject);
begin
  if Trim(Edit1.Text) <> EmptyStr then
  begin
      if DirectoryExists(Dados.AppPath+'Data') then
      begin
        if FileExists(Dados.AppPath+Edit1.Text+'.s3db') then
        begin
          if Dados.ValidateDatabase(Dados.AppPath+Edit1.Text+
            '.s3db') then
            ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
          else
          begin
            Dados.CreateDatabase(Dados.AppPath+Edit1.Text+
              '.s3db');
            FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
          end;
        end
        else
        begin
          Dados.CreateDatabase( Dados.AppPath+ Edit1.Text+'.s3db');
          FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
        end;
      end
      else
      begin
        if FileExists(Dados.AppPath+Edit1.Text+'.s3db') then
        begin
          if Dados.ValidateDatabase(Dados.AppPath+Edit1.Text+
            '.s3db') then
            ShowMessage(Lang.ThereIsAlreadyARecordWithThatName)
          else
          begin
            Dados.CreateDatabase(Dados.AppPath+ Edit1.Text+
              '.s3db');
            FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
          end;
        end
        else
        begin
          Dados.CreateDatabase(Dados.AppPath+Edit1.Text+'.s3db');
          FormSelectDatabase.Edit1.Text:= Dados.AppPath+Edit1.Text+
              '.s3db';
        end;
      end;
      Dados.DatabaseMineralFileName := Dados.AppPath+ Edit1.Text+'.s3db';
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
    //ChangeLanguage;
    //SpeedButtonApply.Hint:=Lang.Close;
  end;
end;

procedure TFormAddDatabase.FormDestroy(Sender: TObject);
begin

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
   SpeedButtonCreateDatabase.Hint:=Lang.Confirm;
end;

procedure TFormAddDatabase.ActionCloseExecute(Sender: TObject);
begin
  FormAddDatabase.Visible:=False;
end;


end.

