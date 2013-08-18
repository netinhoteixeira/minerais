unit udatamodule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sqlite3DS, DB, SdfData, FileUtil, LR_Class, LR_DBSet,
  SQLite3mod, SQLite3tablemod;

type

  { TDados }

  TDados = class(TDataModule)
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
    function determinaBD(diretorio: string): boolean;
    { public declarations }
  end;

var
  Dados: TDados;


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

end.
