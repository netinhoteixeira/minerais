unit udatamodule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sqlite3DS, db, FileUtil, LR_Class, LR_DBSet;

type

  { TDados }

  TDados = class(TDataModule)
    DatasourcePrinter: TDatasource;
    DatasourceReport: TDatasource;
    DatasourceCombobox: TDatasource;
    DatasourceGeral: TDatasource;
    DatasourceDidatico: TDatasource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Sqlite3DatasetPrinter: TSqlite3Dataset;
    Sqlite3DatasetCombobox: TSqlite3Dataset;
    Sqlite3DatasetDidatico: TSqlite3Dataset;
    Sqlite3DatasetGeral: TSqlite3Dataset;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    procedure determinaBD(diretorio:string);
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

procedure TDados.determinaBD(diretorio: string);
begin
  if SQLite3DatasetGeral.Active Then  SQLite3DatasetGeral.Close;
  if SQLite3DatasetCombobox.Active Then  SQLite3DatasetComboBox.Close;
  if SQLite3DatasetDidatico.Active Then  SQLite3DatasetDidatico.Close;
  with SQLite3DatasetGeral do
  begin
  FileName:=diretorio;
  end;
  with SQLite3DatasetCombobox do
  begin
  Filename:=diretorio;
  end;
  with SQLite3DatasetDidatico do
  begin
  Filename:=diretorio;
  Open();
  end;
  with SQLite3DatasetPrinter do
  begin
  Filename:=diretorio;
  end;
end;

end.

