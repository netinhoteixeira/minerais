unit unitadvancedfilter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, frameficha;

type

  { TFormAdvancedFilter }

  TFormAdvancedFilter = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAdvancedFilter: TFormAdvancedFilter;
  FFicha: TFrameFicha;

implementation

{$R *.lfm}

{ TFormAdvancedFilter }

procedure TFormAdvancedFilter.FormCreate(Sender: TObject);
begin
  FFicha := TFrameFicha.Create(FormAdvancedFilter);
  with FFicha do Parent := FormAdvancedFilter;
  FFicha.PanelButtonSave.Visible:=False;
  FFicha.EditingMode(True);
  FFicha.FormMode:=Filter;
end;

procedure TFormAdvancedFilter.FormDestroy(Sender: TObject);
begin
  FFicha.Free;
end;

end.

