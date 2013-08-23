unit udatamodule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sqlite3DS, DB, SdfData, FileUtil, LR_Class, LR_DBSet,
  SQLite3mod, SQLite3tablemod;

type

  { TDados }

  TDados = class(TDataModule)
    DatasourceInfravermelho: TDatasource;
    DatasourceVarredura: TDatasource;
    DatasourceGraficoRaman: TDatasource;
    DatasourcePreencheAmostras: TDatasource;
    DatasourcePlanilhaMicrossonda: TDatasource;
    DatasourceAmostras: TDatasource;
    DatasourcePrinter: TDatasource;
    DatasourceReport: TDatasource;
    DatasourceCombobox: TDatasource;
    DatasourceGeral: TDatasource;
    DatasourceDidatico: TDatasource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    SdfDataSetInfravermelho: TSdfDataSet;
    SdfDataSetVarredura: TSdfDataSet;
    SdfDataSetGraficoRaman: TSdfDataSet;
    SdfDataSetPlanilhaMicrossonda: TSdfDataSet;
    Sqlite3DatasetPreencheAmostras: TSqlite3Dataset;
    Sqlite3DatasetAmostras: TSqlite3Dataset;
    Sqlite3DatasetPrinter: TSqlite3Dataset;
    Sqlite3DatasetCombobox: TSqlite3Dataset;
    Sqlite3DatasetDidatico: TSqlite3Dataset;
    Sqlite3DatasetGeral: TSqlite3Dataset;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    sldb: TSQLiteDatabase;
  sltb: TSQLiteTable;
    function DeterminaBD(diretorio: string): boolean;
    function DeterminaArquivo(Especie:String; Rruff_id:String; Tipo:String; DirecaoLaser:String): String;
    procedure SalvaArquivo(Especie:String; Rruff_id:String; Tipo:String;
         DiretorioArquivo:String; DirecaoLaser:String);
    { public declarations }
  end;

var
  Dados: TDados;
  MS:TMemoryStream;
  FS:TFileStream;

  Const Microssonda:String = 'Microssonda';
        Raman:String = 'RAMAN';
        AmplaVarredura:String = 'Ampla Varredura';
        Infravermelho:String ='Espectro Infravermelho';

implementation

{$R *.lfm}

{ TDados }

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  if SQLite3DatasetGeral.Active then
    SQLite3DatasetGeral.Close;
  if SQLite3DatasetDidatico.Active then
    SQLite3DatasetDidatico.Close;
end;

function TDados.determinaBD(diretorio: string): boolean;
begin
  if SQLite3DatasetGeral.Active then
    SQLite3DatasetGeral.Close;
  if SQLite3DatasetCombobox.Active then
    SQLite3DatasetComboBox.Close;
  if SQLite3DatasetDidatico.Active then
    SQLite3DatasetDidatico.Close;
  with SQLite3DatasetGeral do
  begin
    FileName := diretorio;
  end;
  with SQLite3DatasetCombobox do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetDidatico do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetPrinter do
  begin
    Filename := diretorio;
  end;
  with SQLite3DatasetAmostras do
  begin
    Filename := diretorio;
  end;
   with SQLite3DatasetPreencheAmostras do
  begin
    Filename := diretorio;
  end;
    sldb := TSQLiteDatabase.Create(Diretorio);
  //Checa se a Tabela é compatível
  if SQLite3DatasetGeral.TableExists('minerais') then
  begin
    if SQLite3DatasetGeral.TableExists('mineralogia') then
    begin
      if SQLite3DatasetGeral.TableExists('rruff') then
      begin
      Result := True;
      end
      else Result:=False;
    end
    else
      Result := False;
  end
  else
    Result := False;



  {SQLite3DatasetGeral.FindField();

  if SQLite3DatasetGeral.TableExists('minerais') then
    if SQLite3DatasetGeral.TableExists('mineralogia') then
      if SQLite3DatasetGeral.Fields.FindField('nome') then
        if SQLite3DatasetGeral.Fields.FindField('formula') then
        Result:=True;
        else
        Result:=False;  }
end;

function TDados.DeterminaArquivo(Especie: String; Rruff_id: String; Tipo: String;
 DirecaoLaser:String ): String;
begin
  if Tipo = Microssonda then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, microssonda FROM rruff WHERE '+
    'especie ="'+Especie+'" and rruff_id ="'+Rruff_id+'" ;');
    MS:=sltb.FieldAsBlob(sltb.FieldIndex['microssonda']);
    if MS <> nil then
    begin
      MS.Position:=0;
      MS.SaveToFile(GetCurrentDir+'\Data\microssonda.csv');
      Result:=GetCurrentDir+'\Data\microssonda.csv';
    end;
  end
  else
  if Tipo = Raman then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, raman, direcao_laser FROM rruff WHERE '+
    'especie ="'+Especie+'" and rruff_id ="'+Rruff_id+'";');
    MS:=sltb.FieldAsBlob(sltb.FieldIndex['raman']);
    if MS <> nil then
    begin
      MS.Position:=0;
      MS.SaveToFile(GetCurrentDir+'\Data\raman.csv');
      Result:=GetCurrentDir+'\Data\raman.csv';
    end;
  end
  else
  if Tipo = AmplaVarredura then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, varredura FROM rruff WHERE '+
    'especie ="'+Especie+'" and rruff_id ="'+Rruff_id+'";');
    MS:=sltb.FieldAsBlob(sltb.FieldIndex['varredura']);
    if MS <> nil then
    begin
      MS.Position:=0;
      MS.SaveToFile(GetCurrentDir+'\Data\varredura.csv');
      Result:=GetCurrentDir+'\Data\varredura.csv';
    end;
  end
  else
  if Tipo = Infravermelho then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, infravermelho FROM rruff WHERE '+
    'especie ="'+Especie+'" and rruff_id ="'+Rruff_id+'";');
    MS:=sltb.FieldAsBlob(sltb.FieldIndex['infravermelho']);
    if MS <> nil then
    begin
      MS.Position:=0;
      MS.SaveToFile(GetCurrentDir+'\Data\infravermelho.csv');
      Result:=GetCurrentDir+'\Data\infravermelho.csv';
    end;
  end
  else
  Result:=EmptyStr;
end;

procedure TDados.SalvaArquivo(Especie: String; Rruff_id: String; Tipo: String;
   DiretorioArquivo:String; DirecaoLaser:String);
begin
  if Tipo = Microssonda then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, microssonda FROM rruff ;');
    FS:=TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set microssonda = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'";', fs);
    FS.Free;
  end;
  if Tipo = Raman then  //criar tabela para raman
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, raman, direcao_laser FROM rruff ;');
    FS:=TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set raman = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'";', fs);
    FS.Free;
  end;
  if Tipo = AmplaVarredura then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, varredura FROM rruff ;');
    FS:=TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set varredura = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'";', fs);
    FS.Free;
  end;
  if Tipo = Infravermelho then
  begin
    sltb:= sldb.GetTable('SELECT especie, rruff_id, infravermelho FROM rruff ;');
    FS:=TFileStream.Create(DiretorioArquivo, fmOpenRead);
    sldb.UpdateBlob('UPDATE rruff set infravermelho = ? WHERE especie = "'+Especie+'" and rruff_id="'+Rruff_id+'";', fs);
    FS.Free;
  end;
end;

end.
