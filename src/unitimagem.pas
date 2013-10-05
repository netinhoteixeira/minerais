unit unitImagem;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics;

function ImagemMineral(Nome: string; Numero: integer): TJPEGImage;
function ImagemDidatica(Campo: string; Numero: integer): TJPEGImage;
function SelecionarImagem(NomeCampo: string; Tabela: string; Numero: integer): TJPEGImage;
procedure RemoveImagem(NomeCampo: string; Tabela: string; Numero: integer; Rruff_id:String);
function AdicionaImagemRruff(Especie: String; Rruff_id: String; Arquivo:String; Tipo:String):TJPEGImage;
function SelecionaImagensRruff(Especie: String; Rruff_id: String; Tipo:String):TJPEGImage;

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
    Dados.sltb := Dados.sldb.GetTable('SELECT nome, imagem' + IntToStr(Numero) + ' FROM minerais where nome = "' +
      NomeCampo + '"');
    //colocar comando para ver se rowcount > 0
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
         ///mudar o procedimento abaixo para udatamodule e mudar o nome
procedure RemoveImagem(NomeCampo: string; Tabela: string; Numero: integer;Rruff_id:String);
begin
  if Numero = 0 then
  begin
    Dados.sldb.ExecSQL('SELECT '+NomeCampo+' FROM '+Tabela+' WHERE rruff_id ="'+Rruff_id+'";');
    Dados.sldb.ExecSQL('Update ' + Tabela + ' set '+ NomeCampo +' = null;')
  end
  else
  begin
    Dados.sldb.ExecSQL('Update ' + Tabela + ' set ' + NomeCampo + IntToStr(Numero) +
      ' = null ;');
  end;
end;

function AdicionaImagemRruff(Especie: String; Rruff_id: String; Arquivo:String; Tipo:String):TJPEGImage;
var FS:TFileStream;
begin
  Try
    FS := TFileStream.Create(Arquivo, fmOpenRead);
    if Tipo = 'Amostra' then
    begin
      Dados.sldb.UpdateBlob('UPDATE rruff set imagem_amostra = ? WHERE especie = "'+Especie+'" and '+
        'rruff_id = "'+Rruff_id+'";', fs)
    end
    else
    if Tipo = 'Quimica' then
    begin
      Dados.sldb.UpdateBlob('UPDATE rruff set imagem_quimica = ? WHERE especie = "'+Especie+'" and '+
        'rruff_id = "'+Rruff_id+'";', fs)
    end;
  finally
    fs.Free;
    Result:=SelecionaImagensRruff(Especie, Rruff_id, Tipo);
  end;
end;

function SelecionaImagensRruff(Especie: String; Rruff_id: String; Tipo:String): TJPEGImage;
begin
  if Tipo = 'Amostra' then
  begin
    Dados.sltb := Dados.sldb.GetTable('SELECT imagem_amostra FROM rruff WHERE especie = "' +
      Especie + '" and rruff_id = "' + Rruff_id +'";');
    ms := Dados.sltb.FieldAsBlob(Dados.sltb.FieldIndex['imagem_amostra']);
  end
  else
  if Tipo =  'Quimica' then
  begin
    Dados.sltb := Dados.sldb.GetTable('SELECT  imagem_quimica FROM rruff WHERE especie = "' +
      Especie + '" and rruff_id = "' + Rruff_id +'";');
    ms := Dados.sltb.FieldAsBlob(Dados.sltb.FieldIndex['imagem_quimica']);
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

end.


