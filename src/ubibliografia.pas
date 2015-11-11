unit ubibliografia; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, DbCtrls, Buttons, StdCtrls, ActnList, SQLite3tablemod,
  Unitlanguage, unitconfigfile;

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
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    procedure ChangeLanguage;
    { public declarations }
  end; 

var
  FormBibliografia: TFormBibliografia;
  Bibliografia: TextFile;
  Diretorio, Texto:String;

implementation
{$R *.lfm}
uses udatamodule, unitformconfigurations;

{ TFormBibliografia }

procedure TFormBibliografia.FormShow(Sender: TObject);
//var StrBD:String; i, Tamanho:Integer;  R:Boolean;
begin
  Memo1.Clear;
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
        begin
          Dados.DatabaseMinerals:= TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
          Dados.TableMineralogy:= Dados.DatabaseMinerals.GetTable(
            'SELECT campo FROM '+Dados.Table6+' WHERE campo="bibliografia" ;');
          if Dados.TableMineralogy.Count>0 then
            if Dados.TableMineralogy.MoveFirst then
              begin
                Memo1.Append(Dados.TableMineralogy.Fields[0]);
              end;
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

procedure TFormBibliografia.ChangeLanguage;
begin
  FormBibliografia.Caption:=Lang.Bibliography;
  SpeedButtonSave.Hint:=Lang.Save;
  SpeedButtonEdit.Hint:=Lang.Edit;
  SpeedButtonClose.Hint:=Lang.Close;
end;

procedure TFormBibliografia.ActionSaveExecute(Sender: TObject);
begin
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
        begin
          Dados.DatabaseMinerals:= TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
          Dados.TableMineralogy:= Dados.DatabaseMinerals.GetTable(
            'SELECT texto FROM '+Dados.Table6+' WHERE campo="bibliografia" ;');
          if Dados.TableMineralogy.Count >0 then
          begin
            Dados.DatabaseMinerals.ExecSQL('UPDATE mineralogia SET texto = "'+
            Memo1.Text+'" WHERE campo="bibliografia"');
          end
          else
          begin
            Dados.DatabaseMinerals.ExecSQL(
              'INSERT INTO '+Dados.Table6+' (campo, texto) VALUES ("bibliografia", "'+
              Memo1.Text+'") ; ');
          end;
        end;
end;

procedure TFormBibliografia.FormCreate(Sender: TObject);
begin
  if SetLanguage(ConfigGetLanguage) then
  begin
    ChangeLanguage;
  end;
  if Dados.DatabaseMineralFileName <> EmptyStr then
    if FileExists(Dados.DatabaseMineralFileName) then
      if Dados.ValidateDatabase(Dados.DatabaseMineralFileName) then
        begin
          Dados.DatabaseMinerals:= TSQliteDatabase.Create(Dados.DatabaseMineralFileName);
          Dados.TableMineralogy:= Dados.DatabaseMinerals.GetTable(
            'SELECT campo FROM '+Dados.Table6+' WHERE campo="bibliografia" ;');
          if Dados.TableMineralogy.Count>0 then
            if Dados.TableMineralogy.MoveFirst then
              begin
                Memo1.Append(Dados.TableMineralogy.Fields[0]);
              end;
        end;
end;

procedure TFormBibliografia.FormDestroy(Sender: TObject);
begin

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

