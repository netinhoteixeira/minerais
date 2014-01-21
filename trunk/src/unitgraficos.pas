unit unitgraficos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, TASeries, Dialogs;

const
  Azul = $990000;
  Verde = $009900;
  Vermelho = $000099;

type
  Valor = record
    Str: String;
    FloatPoints: Array[0..10] of Integer;
    Commas: Array[0..10] of Integer;
    //Aspas: Boolean; //se tem aspas
  end;

 function PlotarGrafico(Diretorio,Cor:String):TLineSeries;

implementation

uses udatamodule;
             //retirar variavel cor
           //colocar variavel que le os dados de tras para frente (infravermelho)
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
  if Diretorio <> EmptyStr then
  begin
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
{
function PlotarGrafico(Diretorio,Cor:String): TLineSeries;

 var
 Serie: TLineSeries;
 Arquivo: TextFile;
 Value: Valor;
 TotalFloatPoints: Integer;
 TotalCommas: Integer;

 VarFile: String;
  function ExtrairValores(Valores: String; Eixo: Integer): Double;
  var   I: Integer; Resultado: String;
  begin
    TotalFloatPoints:= 0;
    TotalCommas:= 0;
    for I:= 0 to Length(Valores) do
    begin
      if Copy(Valores, I, 1) = ',' then
      begin
        TotalCommas:= TotalCommas+ 1;
        Value.Commas[TotalCommas]:=I;
      end;
      if Copy(Valores, I, 1) = 'E' then
      begin
        TotalFloatPoints:=TotalFloatPoints+1;
        Value.FloatPoints[TotalFloatPoints]:=I;
      end;
    end;

    ShowMessage('TotalFloatPoints :'+IntToStr(TotalFloatPoints));
    ShowMessage('TotalCommas: '+IntToStr(TotalCommas));
    ShowMessage('Valores: ' +Valores);

    Case TotalCommas of
    0:begin {apenas um eixo}Result:= 0.0 end;
    1:begin
        case TotalFloatPoints of
        0:begin
            case eixo of
            1:begin
              Resultado:= Copy(Valores, 0, Value.Commas[1]-1);
              StringReplace(Resultado, '.',',', [rfReplaceAll]);
              StringReplace(Resultado, '"','', [rfReplaceAll]);
              Result:= StrToFLoat(Resultado);
              end;
            2:begin
              Resultado:=Copy(Valores, Value.Commas[1]+1,
                Length(Valores)-Value.Commas[1]+1);
              StringReplace(Resultado, '.', ',', [rfReplaceAll]);
              StringReplace(Resultado, '"', '', [rfReplaceAll]);
              Result:= StrToFloat(Resultado);
              end;
            3:begin
              Result:= 0.0;
              ShowMessage('Não há dados do eixo Z.');
              end;
            end;
          end;
        1:begin
          Result:=0.0;
          //algoritmo para ler notação de ponto flutuante em um <td>
           { case eixo of
            1:begin
              Resultado:= Trim(Copy(Valores, 0,Value.Commas[1]-1));
              Result:= StrToFLoat(Resultado);
            end;
            2:begin
              Resultado:=Trim(Copy(Valores, Value.Commas[1]+1,
                Length(Valores)-Value.Commas[1]+1));
              Result:= StrToFloat(Resultado);
            end;
            3:begin
              ShowMessage('Não há dados do eixo Z.');
              end;
            end;  }
          end;
        2:begin
          //algoritmo para ler notação de ponto flutuante em dois <td>
            Result:=0.0;
          end;
       end;
      end;
    2:begin
        Result:=0.0;
      end;
    3:begin
        Result:=0.0;
      end;
    end;
  end;
begin
  Serie := TLineSeries.Create(nil);
  if Diretorio <> EmptyStr then
  begin
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

    AssignFile(Arquivo, Diretorio);
    Reset(Arquivo);
    While (not EOF(Arquivo)) do
    Begin
      Readln(Arquivo, VarFile);
      if Copy(VarFile, 0, 1) <> '#' then
      begin
        if VarFile <> EmptyStr then
          Serie.AddXY(ExtrairValores(Trim(VarFile), 1),
            ExtrairValores(Trim(VarFile), 2));
      end;
    end;
    CloseFile(Arquivo);
  end;
    Result:=Serie;
end;       }

end.
