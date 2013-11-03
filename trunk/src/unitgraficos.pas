unit unitgraficos;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils, TASeries, Dialogs;

const
  Azul = $990000;
  Verde = $009900;
  Vermelho = $000099;

function PlotarGrafico(Diretorio,Cor:String):TLineSeries;

implementation

uses udatamodule;

function PlotarGrafico(Diretorio,Cor:String): TLineSeries;
  var
  Serie: TLineSeries;
  Arquivo:TextFile;
  Valores:String;

  function ExtrairValores(Valores:String; Eixo:Boolean):Double;
  var I:Integer;  Virgula:Integer;  Resultado:String;
  begin
    Virgula:=-1;
    for I:=0 to Length(Valores) do
    begin
      if Copy(Valores,I,1) = ',' then
      begin
      Virgula:=I;
      end;
    end;
    if Virgula >= 0 then
    begin
      if Eixo then
      begin
        Resultado:=Copy(Valores, 0, Virgula-1);
        Resultado:=StringReplace(Resultado, '.',',',[rfReplaceAll]);
        Resultado:=StringReplace(Resultado, '"','',[rfReplaceAll]);
        Result:=StrToFloat(Resultado);
      end
      else
      begin
        Resultado:=Copy(Valores, Virgula+1, Length(Valores)-Virgula+1);
        Resultado:=StringReplace(Resultado, '.',',',[rfReplaceAll]);
        Resultado:=StringReplace(Resultado, '"','',[rfReplaceAll]);
        Result:= StrToFloat(Resultado);
      end;
    end
    else
    Result:=0.0;
  end;
begin
  Serie := TLineSeries.Create(nil);
  if Cor = 'Azul' then
    Serie.SeriesColor:=Azul
  else
  if Cor= 'Verde' then
    Serie.SeriesColor:=Verde
  else
  if Cor = 'Vermelho' then
    Serie.SeriesColor:=Vermelho
    else                          //
    Serie.SeriesColor:=$444444;  //teste
  if Diretorio<> EmptyStr then
  begin
    AssignFile(Arquivo, Diretorio);
    Reset(Arquivo);
    While (not EOF(Arquivo)) do
    Begin
     Readln(Arquivo, Valores);
     if Copy(Valores, 0, 1) <> '#' then
     begin
       if Valores <> EmptyStr then
       Serie.AddXY(ExtrairValores(Trim(Valores), True),
         ExtrairValores(Trim(Valores), False));
     end;
    end;
    CloseFile(Arquivo);
  end;
  Result:=Serie;
end;

end.
