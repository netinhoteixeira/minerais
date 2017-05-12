unit uformimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  unitblobfields, uframeimages;

type

  { TFormImages }

  TFormImages = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure ImageClick(Sender: TObject);
    Frame: TFrameImage;
    { private declarations }
  public
    procedure AddImages(MineralName: string);
    { public declarations }
  end;

const
  PanelWidth: integer = 300;

var
  FormImages: TFormImages;

implementation

{$R *.lfm}

{ TFormImages }

procedure TFormImages.FormCreate(Sender: TObject);
begin
   Frame:= TFrameImage.Create(Panel1);
  with Frame do
  begin
    FormMode:Large;
    Parent := Panel1;
    Align:= alClient;
  end;
end;

procedure TFormImages.FormDestroy(Sender: TObject);
begin
   Frame.Free;
end;

procedure TFormImages.ImageClick(Sender: TObject);
begin

end;

procedure TFormImages.AddImages(MineralName: string);
var
  Count, counter, columns, mineralCount, row, rownumber: integer;
begin
  row:=0;
  rowNumber:=0;
  columns := Round(PanelWidth - (2 * Border) / ImageWidth);
  mineralCount := GetImagesCount;
  for Counter := 0 to mineralCount do
  begin
    Inc(RowNumber);
    Image[Counter] := TImage.Create(nil);
    with Image[Counter] do
    begin
      Parent := ScrollBoxImages;
      Left := (Border*COunter)+ (rowNumber*Counter);
      Top := Border*(Row+1);
      Width := ImageWidth;
      Height := ImageHeight;
      Proportional := True;
      Center := True;
      //AntialiasingMode := amOn;
      OnClick := @ImageClick;
      Picture.Graphic :=
        SelectImage(MineralName, Counter);
    end;
    //if rowNumber == columns then
    //begin
      //inc(row);
      //RowNumber:=0;
    //end;

    //  Image1.Picture.Clear;
    //Image1.Destroy;
    //Image[1].Created := False;

  end;
end;

end.
