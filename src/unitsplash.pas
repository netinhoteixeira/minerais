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
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.lfm}

end.

