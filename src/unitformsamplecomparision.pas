unit unitformsamplecomparision;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, Forms, Controls, Graphics, Dialogs,
  ExtCtrls;

type

  { TFormSampleComparison }

  TFormSampleComparison = class(TForm)
    Chart1: TChart;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSampleComparison: TFormSampleComparison;

implementation

{$R *.lfm}

end.

