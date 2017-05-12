unit unitfilter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, udatamodule;

function FilterString(Name, Field, Filter, FieldText: String):Boolean;

implementation

function FilterString(Name, Field, Filter, FieldText: String): Boolean;
var SQLstr, StrAux:String; I,K:Integer; Eliminate:Boolean;
begin
  Eliminate:=True;
  SQLstr:='SELECT '+Field+' FROM '+Dados.Table1+' WHERE '+FieldName+'; ';
  Dados.TableGeneral:=Dados.DatabaseMinerals.GetTable(SQLstr);
  if Dados.TableGeneral.Count >0 then
  begin
    if (Dados.TableGeneral.FieldByName[Field] <> EmptyStr) then
    begin
      K := (Length(FieldText));
      for I := 0 to K do
      begin
        StrAux := Copy(Dados.TableGeneral.Fields[0], I, K);
        if (UpCase(StrAux) = UpCase(FieldText)) then
          Eliminate := False;
      end;
    end;
  end;
end;

end.

