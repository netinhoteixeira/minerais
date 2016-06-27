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
    FFicha: TFrameFicha;
    { public declarations }
  end;

var
  FormAdvancedFilter: TFormAdvancedFilter;

implementation
uses unitfichaespecie;
{$R *.lfm}

{ TFormAdvancedFilter }

procedure TFormAdvancedFilter.FormCreate(Sender: TObject);
begin
  FFicha := TFrameFicha.Create(FormAdvancedFilter);
  with FFicha do
  begin
    Parent := FormAdvancedFilter;
    PanelButtonSave.Visible:=False;
    EditingMode(True);
    FormMode:= Filter;
    PageControlFIcha.Pages[4].Visible:= False;
  end;
end;

procedure TFormAdvancedFilter.FormDestroy(Sender: TObject);
begin
  FFicha.Free;
end;

end.

