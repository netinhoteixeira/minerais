unit uformrmimage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ActnList, uframeimages, udatamodule;

type

  { TFormRmImage }

  TFormRmImage = class(TForm)
    ActionListClick: TAction;
    ActionList1: TActionList;
    ListBox1: TListBox;
    Panel1: TPanel;
    procedure ActionListClickExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Frame:TFrameImage;
    { private declarations }
  public
    { public declarations }
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

procedure TFormRmImage.FormDestroy(Sender: TObject);
begin
   Frame.Free;
end;

end.

