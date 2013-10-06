unit unitgraficos;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils, TASeries, Dialogs;

function PlotarGrafico(Diretorio:String):TLineSeries;
function StringParaReal(Dado: string): real;

implementation

uses udatamodule;

function PlotarGrafico(Diretorio:String): TLineSeries;
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
  {Dados.SdfDataSetGraficos.Open;
  Dados.SdfDataSetGraficos.First;
  //if (Dados.SdfDataSetGraficos.RecNo > 0) then
  begin
    while not Dados.SdfDataSetGraficos.EOF do
    begin
      Serie.AddXY(Dados.SdfDataSetGraficosValorX.AsFloat ,
        Dados.SdfDataSetGraficosValorY.AsFloat);

      Dados.SdfDataSetGraficos.Next;
    end;
    Dados.SdfDataSetGraficos.Close;
  end; }
  Result := Serie;
end;

function StringParaReal(Dado: string): real;
begin
  if Dado <> EmptyStr then
  begin
    begin
      Dado := StringReplace(Dado, '.', ',', [rfReplaceAll]);
      Dado:= StringReplace(Dado, '(', '', [rfReplaceAll]);
      Dado:= StringReplace(Dado, ')', '', [rfReplaceAll]);
      if Dado = EmptyStr then Result:=0.0
      else
      Result := StrToFloat(Dado);
    end;
  end
  else
    Result := 0.0;
end;

end.
