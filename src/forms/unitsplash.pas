unit unitSplash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TFormSplash }

  TFormSplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.lfm}

{ TFormSplash }

procedure TFormSplash.FormDestroy(Sender: TObject);
begin

end;

end.

