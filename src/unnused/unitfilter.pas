unit unitfilter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, udatamodule, Dialogs;

function FilterString(Table, Field, Name, Filter: string): boolean;

implementation

function FilterString(Table, Field, Name, Filter: string): boolean;
var
  SQLstr, StrAux: string;
  I, J, K: integer;
  Eliminate: boolean;
begin
  Eliminate := True;
  SQLstr := 'SELECT ' + Field + ' FROM ' + Table + ' WHERE nome="' + Name + '"; ';
  Dados.TableGeneral := Dados.DatabaseMinerals.GetTable(SQLstr);
  if Dados.TableGeneral.Count > 0 then
  begin
    if (Dados.TableGeneral.Fields[0] <> EmptyStr) then
    begin
      K := (Length(Filter));
      J := Length(Dados.TableGeneral.Fields[0]);
      //showmessage(inttostr(K));
      //showmessage('FIlter: '+ filter);
      for I := 0 to J do
      begin
        //showmessage(straux);
        StrAux := Copy(Dados.TableGeneral.Fields[0], I, K);
        if (UpCase(StrAux) = UpCase(Filter)) then
          Eliminate := False;
      end;
    end;
  end;
  Result := Eliminate;
end;

end.
