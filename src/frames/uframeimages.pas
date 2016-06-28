unit uframeimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, udatamodule,
  unitBlobFields;

type

  { TFrameImage }

  TFrameImage = class(TFrame)
    ScrollBox1: TScrollBox;
  private
    { private declarations }
  public
    SelectedImage:Char;
    constructor Create(AOwner:TComponent);  override;
    destructor Destroy; override;
    procedure RefreshImages(MineralName:String; Count:Integer);
    { public declarations }
  end;


  const
    Lista_Formatos: string = 'All Files| *.jpg; *.jpeg;';
    ImagesLeft: integer = 6;
  Image1Top: integer = 8;
  SeparadorImagens: integer = 140;
  ImagesWidth: integer = 140;
  ImagesHeight: integer = 120;

  ImagesMargin: Integer = 8;
  ImagesSize: Integer = 120;

  var
    Images:Array[0..20] of TImage;

implementation

{$R *.lfm}

{ TFrameImage }

constructor TFrameImage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFrameImage.Destroy;
begin
  inherited Destroy;
end;

procedure TFrameImage.RefreshImages(MineralName: String; Count:Integer);
var I:Integer; SQL:String;
begin
  SQL:='SELECT '+FieldName+' FROM '+Dados.Table5+' WHERE '+FieldName+'="'+MineralName+'"';
  for I:=0 to Count-1 do
  begin
    Images[I] :=TImage.Create(nil);
    with Images[I] do
    begin
      Parent:=ScrollBox1;
      Left:=ImagesLeft;
      Top:=Trunc(Image1Top + (I*(Image1Top+ImagesHeight)));
      Width:=ImagesWidth;
      Height:=ImagesHeight;
      Proportional:=True;
      Center:=True;
      //AntialiasingMode := amOn;
      //OnClick := @Image1Click;
      Picture.Graphic:=  SelectImage(MineralName, I);
    end;
  end;

end;

end.

