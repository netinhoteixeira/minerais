unit uframeimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, udatamodule,
  unitBlobFields, Dialogs;

type

  { TFrameImage }

  TFrameImage = class(TFrame)
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
  private
    { private declarations }
    procedure DeleteImage(Sender: TObject);
    procedure ImageClick(Sender:TObject);
  public
    SelectedImage: char;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RefreshImages(MineralName: string; Count: integer);
    procedure RefreshLarge(MineralName: string; Count: integer);
    { public declarations }
  end;

const
  Lista_Formatos: string = 'All Files| *.jpg; *.jpeg;';
  ImagesLeft: integer = 6;
  Image1Top: integer = 8;
  SeparadorImagens: integer = 140;
  ImagesWidth: integer = 140;
  ImagesHeight: integer = 120;

  ImagesMargin: integer = 8;
  ImagesSize: integer = 120;

var
  Images: array[0..20] of TImage;
  imCount: integer;

implementation
 uses  uformrmimage, unitfichaespecie;

{$R *.lfm}

{ TFrameImage }

procedure TFrameImage.DeleteImage(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to ImCount do
  begin
    if Sender.Equals(Images[I]) then
    begin
      ClearBlobIdField(Dados.Table5, FieldImage,
        FormRmImage.ListBox1.GetSelectedText, );
      Images[I].Picture.Clear;
    end;
  end;
end;

procedure TFrameImage.ImageClick(Sender: TObject);
var I:Integer;
begin
  For I:=0 to imCount do
  begin
    if Sender.Equals(Images[I]) then
    begin
      FormMain.FormFrameFicha.ImagemAmpliada.Picture.Graphic:=
        Images[I].Picture.Graphic;
    end;
  end;
end;

constructor TFrameImage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ImCount := 0;
end;

destructor TFrameImage.Destroy;
begin
  inherited Destroy;
end;

procedure TFrameImage.RefreshImages(MineralName: string; Count: integer);
var
  I: integer;
  //Columns = number of columns of images the size of frame allows
begin
  for I := 0 to Count - 1 do
  begin
    Images[I] := TImage.Create(nil);
    with Images[I] do
    begin
      Parent := ScrollBox1;
      Left := ImagesLeft;
      Top := Image1Top + (I * (Image1Top + ImagesHeight));
      Width := ImagesWidth;
      Height := ImagesHeight;
      Proportional := True;
      Center := True;
      //AntialiasingMode := amOn;
      OnClick := @ImageClick;
      Picture.Graphic := SelectImage(MineralName, I);
    end;
  end;

end;

procedure TFrameImage.RefreshLarge(MineralName: string; Count: integer);
var
  TotalColumns, Column, Row, I: integer;
begin
  imCount := Count;
  TotalColumns := Trunc(Panel1.Width / (ImagesSize + ImagesMargin));
  if TotalColumns > 0 then
  begin
    Row := 1;
    Column := 1;
    for I := 0 to Count - 1 do
    begin
      Images[I] := TImage.Create(nil);
      with Images[I] do
      begin
        Parent := ScrollBox1;
        Left := (ImagesMargin + ImagesWidth) * (Column - 1);
        Top := Image1Top + ((Row - 1) * (ImagesMargin + ImagesHeight));
        Width := ImagesWidth;
        Height := ImagesHeight;
        Proportional := True;
        Center := True;
        //AntialiasingMode := amOn;
        OnClick := @DeleteImage;
        Picture.Graphic := SelectImage(MineralName, I);
        Tag:=I;
      end;
      Inc(Column);
      if Column > TotalColumns then
      begin
        Column := 1;
        Inc(Row);
      end;
    end;

  end;
end;

end.
