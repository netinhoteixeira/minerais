unit uformimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  unitblobfields;

type

  { TFormImages }

  TFormImages = class(TForm)
    ScrollBoxImages: TScrollBox;
  private
    procedure ImageClick(Sender: TObject);
    { private declarations }
  public
    procedure AddImages(MineralName: string);
    { public declarations }
  end;

const
  PanelWidth: integer = 300;
  ImageWidth: integer = 50;
  ImageHeight : Integer = 50;
  Border: integer = 10;

var
  FormImages: TFormImages;
  Image:Array[0..10] of TImage;

implementation

{$R *.lfm}

{ TFormImages }

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
