unit uformrmimage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ActnList, Buttons, uframeimages, udatamodule, unitlanguage;

type

  { TFormRmImage }

  TFormRmImage = class(TForm)
    ActionClose: TAction;
    ActionListClick: TAction;
    ActionList1: TActionList;
    ListBox1: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionListClickExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
    Frame:TFrameImage;
  public
    { public declarations }
    procedure ChangeLanguage;
  end;

var
  FormRmImage: TFormRmImage;

implementation

{$R *.lfm}

{ TFormRmImage }

procedure TFormRmImage.FormCreate(Sender: TObject);
begin
   Frame:=TFrameImage.Create(nil);
   with Frame do
  begin
    Parent:=FormRmImage;
    Align:=alClient;
  end;
  if Dados.DatabaseMineralFileName <> EmptyStr then
    ListBox1.Items.AddStrings(Dados.ReturnAllMinerals(ASCII));
end;

procedure TFormRmImage.ActionListClickExecute(Sender: TObject);
begin
   Frame.RefreshLarge(ListBox1.GetSelectedText,
     Dados.MineralImagesCount(ListBox1.GetSelectedText));
end;

procedure TFormRmImage.ActionCloseExecute(Sender: TObject);
begin
  self.Hide;
end;

procedure TFormRmImage.FormDestroy(Sender: TObject);
begin
   Frame.Free;
end;

procedure TFormRmImage.ChangeLanguage;
begin
  self.Caption:=Lang.RemoveImage;
end;

end.

