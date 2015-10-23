unit unitformmodifications;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  frameficha, unitframelist;

type

  { TFormModified }

  TFormModified = class(TForm)
    PanelList: TPanel;
    PanelFicha: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormModified: TFormModified;
  FFicha: TFrameFicha;
  FList: TFrameList;

implementation

{$R *.lfm}

{ TFormModified }

procedure TFormModified.FormCreate(Sender: TObject);
begin
  {FList:=TFrameList.Create(FormModified);
  with FList do
  begin
    Parent:=FormModified;
    Align:=alLeft;
  end;}
  {FFicha:= TFrameFicha.Create(PanelFicha);
  with FFicha do
  begin
    Parent:=PanelFicha;
    FormMode:=Visualize;
    EditingMode(True);
  end;}
end;

procedure TFormModified.FormDestroy(Sender: TObject);
begin

end;

end.

