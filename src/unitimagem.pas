unit unitImagem;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics;

function ImagemMineral(Nome: string; Numero: integer): TJPEGImage;
function ImagemDidatica(Campo: string; Numero: integer): TJPEGImage;
function SelecionarImagem(NomeCampo: string; Tabela: string; Numero: integer): TJPEGImage;
procedure RemoveImagem(NomeCampo: string; Tabela: string; Numero: integer);

var
  ms: TMemoryStream;
  pic: TJPEGImage;

implementation

uses udatamodule;

function ImagemMineral(Nome: string; Numero: integer): TJPEGImage;
begin
  Dados.sltb := Dados.sldb.GetTable('SELECT imagem' + IntToStr(Numero) +
    ' FROM minerais WHERE nome = "' + Nome + '"');

  try
    ms := Dados.sltb.FieldAsBlob(Dados.sltb.FieldIndex['imagem' + IntToStr(Numero)]);
    if (ms <> nil) then
    begin
      ms.Position := 0;
      pic := TJPEGImage.Create;
      pic.LoadFromStream(ms);
      Result := pic;
    end
    else
    begin
      Result := nil;
    end;
  finally
    //pic.Free;
  end;
end;

function ImagemDidatica(Campo: string; Numero: integer): TJPEGImage;
begin
  Dados.sltb := Dados.sldb.GetTable('SELECT mineralogiaimagem' +
    IntToStr(Numero) + ' FROM mineralogia WHERE campo = "' + Campo + '"');
  if Dados.sltb.Count > 0 then
  begin
    try
      ms := Dados.sltb.FieldAsBlob(Dados.sltb.FieldIndex['mineralogiaimagem' +
        IntToStr(Numero)]);
      if (ms <> nil) then
      begin
        ms.Position := 0;
        pic := TJPEGImage.Create;
        pic.LoadFromStream(ms);
        Result := pic;
      end
      else
      begin
        Result := nil;
      end;
    finally
      //pic.Free;
    end;
  end
  else
    Result := nil;
end;

function SelecionarImagem(NomeCampo: string; Tabela: string; Numero: integer): TJPEGImage;
var InsertSQL: String;
begin
  if UpCase(Tabela) = UpCase('minerais') then
  begin
    Dados.sltb := Dados.sldb.GetTable('SELECT imagem' + IntToStr(Numero) + ' FROM minerais where nome = "' +
      NomeCampo + '"');
    ms := Dados.sltb.FieldAsBlob(Dados.sltb.FieldIndex['imagem' + IntToStr(Numero)]);
  end
  else
  if UpCase(Tabela) = UpCase('mineralogia') then
  begin
    Dados.sltb := Dados.sldb.GetTable('SELECT mineralogiaimagem' + IntToStr(Numero) +
      ' FROM mineralogia where campo = "' + NomeCampo + '"');
    if (Dados.sltb.Count = 0) then
    begin
      InsertSQL := 'INSERT INTO mineralogia (campo) VALUES ("' + NomeCampo + '");';
      Dados.sldb.ExecSQL(InsertSQL);
      Dados.sltb := Dados.sldb.GetTable('SELECT mineralogiaimagem' + IntToStr(Numero) +
        ' FROM mineralogia where campo = "' + NomeCampo + '"');
    end;
    ms := Dados.sltb.FieldAsBlob(Dados.sltb.FieldIndex['mineralogiaimagem' + IntToStr(Numero)]);
  end;
  if (ms <> nil) then
  begin
    ms.Position := 0;
    pic := TJPEGImage.Create;
    pic.LoadFromStream(ms);
    Result := pic;
  end
  else
    Result := nil;
end;

procedure RemoveImagem(NomeCampo: string; Tabela: string; Numero: integer);
begin
  Dados.sldb.ExecSQL('Update ' + Tabela + ' set ' + NomeCampo + IntToStr(Numero) +
    ' = null ;');
end;

end.


