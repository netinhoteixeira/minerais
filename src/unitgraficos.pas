unit unitgraficos;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils, TASeries, StrUtils, Dialogs;

function PlotarGrafico:TLineSeries;
function StringParaReal(Dado: string): real;

implementation

uses udatamodule;

function PlotarGrafico: TLineSeries;
  var
  Serie: TLineSeries;
begin
  Serie := TLineSeries.Create(nil);
  Dados.SdfDataSetGraficos.Open;
  Dados.SdfDataSetGraficos.First;
  if (Dados.SdfDataSetGraficos.RecNo > 0) then
  begin
    if Dados.SdfDataSetGraficos.FieldCount<1 then
    begin
       if Dados.SdfDataSetGraficos.Fields.FieldByNumber(0).AsString <> EmptyStr then
        if Copy(Dados.SdfDataSetGraficos.Fields.FieldByNumber(0).AsString,0,1) <> '#'
          then

        Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(
          0).AsString),
          StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString));
      Dados.SdfDataSetGraficos.Next;
    end
    else
    begin
    while (not Dados.SdfDataSetGraficos.EOF) do
    begin
       if Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString <> EmptyStr then
        if Copy(Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString,0,1) <> '#'
          then

        Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(
          1).AsString),
            StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(2).AsString));
      Dados.SdfDataSetGraficos.Next;
    end;
    end;
    Dados.SdfDataSetGraficos.Close;
  end;
  Result := Serie;
end;

function StringParaReal(Dado: string): real;
begin
  if Dado <> EmptyStr then

  begin
    if Dado <> '#' then
    begin
      Dado := StringReplace(Dado, '.', ',', [rfReplaceAll]);
      Result := StrToFloat(Dado);
    end;
  end
  else
    Result := 0.0;
end;

end.
