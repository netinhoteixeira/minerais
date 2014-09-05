unit ubibliografia; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, DbCtrls, Buttons, StdCtrls, ActnList, SQLite3tablemod, IniFIles,
  Unitlanguage;

type

  { TFormBibliografia }

  TFormBibliografia = class(TForm)
    ActionClose: TAction;
    ActionEdit: TAction;
    ActionSave: TAction;
    ActionList1: TActionList;
    BCPanel1: TBCPanel;
    Memo1: TMemo;
    Panel1: TPanel;
    SpeedButtonSave: TSpeedButton;
    SpeedButtonEdit: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionEditExecute(Sender: TObject);
    procedure ActionSaveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  FormBibliografia: TFormBibliografia;
  Bibliografia: TextFile;
  Diretorio, Texto:String;
  DatabaseMinerals: TSQLiteDatabase;
  TableMinerals: TSQLiteTable;
  Config:TIniFile;

implementation
{$R *.lfm}
uses udatamodule;

{ TFormBibliografia }

procedure TFormBibliografia.FormShow(Sender: TObject);
//var StrBD:String; i, Tamanho:Integer;  R:Boolean;
begin
  Memo1.Clear;
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ChooseDatabase('mineral',Dados.DatabaseMineralFileName) then
        begin
          DatabaseMinerals:= TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
          TableMinerals:= DatabaseMinerals.GetTable(
            'SELECT campo FROM mineralogia WHERE campo="bibliografia" ;');
          if TableMinerals.Count>0 then
            if TableMinerals.MoveFirst then
              begin
                Memo1.Append(Dados.TableMinerals.Fields[0]);
              end;
          TableMinerals.Free;
          DatabaseMinerals.Free;
        end;

  //if filename *.s3db ou .sqlite, etc...
  { refazer
  Diretorio:=Copy(Dados.SQlite3DatasetGeral.filename, 0, length(Dados.SQlite3DatasetGeral.filename)-5)+'_bibliografia.dat';
  if (FileExists(Diretorio)) then                //a subtração acima vai depender do formato do banco de dados
  Begin
       AssignFile(Bibliografia, Diretorio);
       Reset(Bibliografia);
       While (not EOF(Bibliografia)) do
       Begin
       Readln(Bibliografia, Texto);
       Memo1.Lines.Add(Texto);
       end;
  end
  else
  Begin
       AssignFile(Bibliografia, Diretorio);
       ReWrite(Bibliografia);
  end; }
end;

procedure TFormBibliografia.ActionSaveExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ChooseDatabase('mineral',Dados.DatabaseMineralFileName) then
        begin
          DatabaseMinerals:= TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
          TableMinerals:= DatabaseMinerals.GetTable(
            'SELECT texto FROM mineralogia WHERE campo="bibliografia" ;');
          if TableMinerals.Count >0 then
          begin
            DatabaseMinerals.ExecSQL('UPDATE mineralogia SET texto = "'+
            Memo1.Text+'" WHERE campo="bibliografia"');
          end
          else
          begin
            DatabaseMinerals.ExecSQL(
              'INSERT INTO mineralogia (campo, texto) VALUES ("bibliografia", "'+
              Memo1.Text+'") ; ');
          end;
        end;
end;

procedure TFormBibliografia.FormCreate(Sender: TObject);
begin
  Config:=TIniFile.Create(Dados.Caminho+'\config.ini');
  if SetLanguage(Config.ReadString('Configurations', 'Language', 'Português')) then
  begin
    FormBibliografia.Caption:=Lang.Bibliography;
    SpeedButtonSave.Hint:=Lang.Save;
    SpeedButtonEdit.Hint:=Lang.Edit;
    SpeedButtonClose.Hint:=Lang.Close;
  end;
  Config.Free;
end;

procedure TFormBibliografia.ActionEditExecute(Sender: TObject);
begin
  if Memo1.ReadOnly then
    Memo1.ReadOnly:=False
  else
    Memo1.ReadOnly:=True;
end;

procedure TFormBibliografia.ActionCloseExecute(Sender: TObject);
begin
  FormBibliografia.Visible:=False;
end;

end.

