unit uframeimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls;

type

  { TFrameImage }

  TFrameImage = class(TFrame)
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
begin


end;

end.

