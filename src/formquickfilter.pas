unit formquickfilter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    ComboBoxSubclass: TComboBox;
    ComboBoxClass: TComboBox;
    EditName: TEdit;
    LabelSubclass: TLabel;
    LabelClass: TLabel;
    LabelName: TLabel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

end.

