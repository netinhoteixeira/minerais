unit unitgraficos;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils, TASeries, StrUtils, Dialogs;

function GraficoRaman: TLineSeries;
function GraficoVarredura: TLineSeries;
function GraficoInfravermelho: TLineSeries;
function GraficoDifracao: TLineSeries;
function StringParaReal(Dado: string): real;

implementation

uses udatamodule;

function GraficoRaman: TLineSeries;
var
  Serie: TLineSeries;
begin
  Serie := TLineSeries.Create(nil);
  // Serie.Name:='LineSeriesRaman';
  Dados.SdfDataSetGraficos.Open;
  Dados.SdfDataSetGraficos.First;
  if (Dados.SdfDataSetGraficos.RecNo > 0) then
  begin
    while (not Dados.SdfDataSetGraficos.EOF) do
    begin
      if Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString <> EmptyStr then
        Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(
          1).AsString),
          StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(2).AsString));
      Dados.SdfDataSetGraficos.Next;
    end;
    Dados.SdfDataSetGraficos.Close;
  end;
  Result := Serie;
end;

function GraficoVarredura: TLineSeries;
var
  Serie: TLineSeries;
begin
  Serie := TLineSeries.Create(nil);
  //Serie.Name:='LineSeriesVarredura';

  Dados.SdfDataSetGraficos.Open;
  Dados.SdfDataSetGraficos.First;
  while (not Dados.SdfDataSetGraficos.EOF) do
  begin
    //  if Copy( Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString, 0, 1 ) <>
    if Copy(Dados.SdfDataSetGraficos.Fields.FieldByName('Field1').AsString, 0, 1) <>
      '#' then
    begin
      // if Dados.SdfDataSetGraficos.Fields.FieldByNumber(2).AsString <> EmptyStr then
      Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByName(
        'Field1').AsString),
        StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByName('Field2').AsString));
      // StringParaReal(Dados.SdfDataSetGraficos.

   { if Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString <> EmptyStr then
     Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString),
       StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(2).AsString));
   } end;
    Dados.SdfDataSetGraficos.Next;
  end;
  Dados.SdfDataSetGraficos.Close;
  Result := Serie;
end;

function GraficoInfravermelho: TLineSeries;
var
  Serie: TLineSeries;
begin
  Serie := TLineSeries.Create(nil);
  //Serie.Name:='LineSeriesInfravermelho';
  Dados.SdfDataSetGraficos.Open;
  Dados.SdfDataSetGraficos.First;
  while (not Dados.SdfDataSetGraficos.EOF) do
  begin
    if Copy(Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString, 0, 1) <>
      '#' then
    begin
      if Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString <> EmptyStr then
        Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(
          1).AsString),
          StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(2).AsString));
    end;
    Dados.SdfDataSetGraficos.Next;
  end;
  Dados.SdfDataSetGraficos.Close;
  Result := Serie;
end;

function GraficoDifracao: TLineSeries;
var
  Serie: TLineSeries;
begin
  Serie := TLineSeries.Create(nil);
  //Serie.Name:='LineSeriesDifracao';
  Dados.SdfDataSetGraficos.Open;
  Dados.SdfDataSetGraficos.First;
  while (not Dados.SdfDataSetGraficos.EOF) do
  begin
    if Copy(Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString, 0, 1) <>
      '#' then
    begin
      if Dados.SdfDataSetGraficos.Fields.FieldByNumber(1).AsString <> EmptyStr then
        Serie.AddXY(StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(
          1).AsString),
          StringParaReal(Dados.SdfDataSetGraficos.Fields.FieldByNumber(2).AsString));
    end;
    Dados.SdfDataSetGraficos.Next;
  end;
  Dados.SdfDataSetGraficos.Close;
  Result := Serie;
end;

function StringParaReal(Dado: string): real;
begin
  if Dado <> EmptyStr then
  begin
    Dado := StringReplace(Dado, '.', ',', [rfReplaceAll]);
    Result := StrToFloat(Dado);
  end
  else
    Result := 0.0;
end;

end.
