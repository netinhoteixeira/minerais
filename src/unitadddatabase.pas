unit unitadddatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ActnList, Buttons, INIFiles, UnitLanguage;

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
    SpeedButtonCreateDatabase: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionCreateDatabaseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    Tipo: string;
    { public declarations }
  end;

var
  FormAddDatabase: TFormAddDatabase;
  COnfig:TIniFile;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormAddDatabase }

procedure TFormAddDatabase.ActionCreateDatabaseExecute(Sender: TObject);
var CurrentPath:String; Config:TIniFile;
begin
  if Trim(Edit1.Text) <> EmptyStr then
  begin
    if Tipo <> EmptyStr then
      if DirectoryExists(GetCurrentDir + '\Data') then
      begin
        CurrentPath:=GetCurrentDir + '\Data';
        if FileExists(CurrentPath +'\' +Edit1.Text+'.s3db') then
        begin
          if Dados.ChooseDatabase(Tipo, CurrentPath +'\'+Edit1.Text+
            '.s3db') then
            ShowMessage('Já existe um banco de dados com esse nome.')
          else
          begin
            Dados.CreateDatabase(Tipo, CurrentPath + '\'+Edit1.Text+
              '.s3db');
          end;
        end
        else
          Dados.CreateDatabase(Tipo, CurrentPath +'\'+ Edit1.Text+'.s3db');
      end
      else
      begin
        //MkDir(GetCurrentDir + '\Data');
        CurrentPath:=GetCurrentDir ;
        if FileExists(CurrentPath + '\'+Edit1.Text+'.s3db') then
        begin
          if Dados.ChooseDatabase(Tipo, CurrentPath +'\' +Edit1.Text+
            '.s3db') then
            ShowMessage('Já existe um banco de dados com esse nome.')
          else
            Dados.CreateDatabase(Tipo, CurrentPath +'\'+ Edit1.Text+
              '.s3db');
        end
        else
        Dados.CreateDatabase(Tipo, CurrentPath + '\'+Edit1.Text+'.s3db');
      end;

    Config:=TIniFIle.Create(Dados.Caminho+'\config.ini');
    if Tipo = 'mineral' then
    begin
      Dados.DatabaseMineralFileName := CurrentPath +'\'+ Edit1.Text+'.s3db';
      config.WriteString('Database', 'Mineral', Dados.DatabaseMineralFileName);
    end
    else
    if tipo = 'amostra' then
    begin
      Dados.DatabaseSampleFileName := CurrentPath + '\'+Edit1.Text+'.s3db';
      config.WriteString('Database', 'Sample', Dados.DatabaseSampleFileName);
    end;
    Config.Free;
    FormAddDatabase.Visible := False;
  end
  else
  ShowMessage('Escolha um nome para o banco de dados.');
end;

procedure TFormAddDatabase.FormCreate(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'Português')) then
  begin
    FormAddDatabase.Caption:=Lang.Add;
    BCLabelSetDatabaseName.Caption:=Lang.TypeTheNameOfDatabase;
    SpeedButtonCreateDatabase.Hint:=Lang.Confirm;
    SpeedButtonClose.Hint:=Lang.Close;
  end;
  Config.Free;
end;

procedure TFormAddDatabase.FormShow(Sender: TObject);
begin
  Edit1.Text:=EmptyStr;
end;

procedure TFormAddDatabase.ActionCloseExecute(Sender: TObject);
begin
  FormAddDatabase.Visible:=False;
end;

end.
