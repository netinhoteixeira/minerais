unit unitPlanilha;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBGrids, DB;

type

  { TFormPlanilha }

  TFormPlanilha = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    DatasourcePlanilha:TDatasource;
    procedure ArquivoMicrossonda(Especie:String; Rruff_id:String; Digito:String);
    procedure ArquivoPlanilha(Table, Field, Especie, Rruff_id, Digito,
      Tipo, Equipamento:String);
    { public declarations }
  end;

var
  FormPlanilha: TFormPlanilha;

implementation

uses
  udatamodule, unitBlobFields;

{ TFormPlanilha }

procedure TFormPlanilha.FormCreate(Sender: TObject);
begin

end;

procedure TFormPlanilha.FormShow(Sender: TObject);
begin

end;

procedure TFormPlanilha.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin

end;

procedure TFormPlanilha.ArquivoMicrossonda(Especie:String; Rruff_Id:String;
    Digito:String);
begin
  Dados.SdfDataSetPlanilhaMicrossonda.Close;
  Dados.SdfDataSetPlanilhaMicrossonda.FileName:=
    SelectBlobFieldToCSVFile('chemistry', 'microprobe_file', Especie, Rruff_id,
      Digito, EmptyStr, EmptyStr);
  if Dados.SdfDataSetPlanilhaMicrossonda.FileName <> EmptyStr then
  begin
    FormPlanilha.Show;
    Dados.SdfDataSetPlanilhaMicrossonda.Open;
  end
  else
  begin
    ShowMessage('Não há arquivo de microssonda para a amostra especificada.');
    DBGrid1.Clear;
  end;
end;

procedure TFormPlanilha.ArquivoPlanilha(Table, Field, Especie, Rruff_id,
  Digito, Tipo, Equipamento:String);
var Diretorio:String;
begin
  if Table = 'chemistry' then
  begin
    Diretorio:= SelectBlobFieldToCSVFile('chemistry', 'microprobe_file',
      Especie, Rruff_id, EmptyStr, EmptyStr, Equipamento);
  end
  else
  if Table = 'raman' then
  begin
    Diretorio:= SelectBlobFieldToCSVFile('raman', 'arquivo_raman',
      Especie, Rruff_id, Digito, Tipo, Equipamento);
  end
  else
  if Table = 'varredura' then
  begin
    Diretorio:=
      SelectBlobFieldToCSVFile('varredura', 'arquivo_varredura', Especie,
        Rruff_id, Digito, Tipo, Equipamento);
  end
  else
  if Table = 'infravermelho' then
  begin
    Diretorio:=
    SelectBlobFieldToCSVFile('infravermelho', 'arquivo_infravermelho',
      Especie, Rruff_id, Digito, EmptyStr, Equipamento);
  end
  else
  if Table = 'difracao' then
  begin
    Diretorio:=
    SelectBlobFieldToCSVFile('infravermelho', 'arquivo_infravermelho',
      Especie, Rruff_id, Digito, EmptyStr, EmptyStr);
  end;
  if Diretorio <> EmptyStr then
  begin
      DataSourcePlanilha:=Dados.CriarDataset(Diretorio);
      DBGrid1.DataSource:=DatasourcePlanilha;
  end;
end;

{$R *.lfm}

end.

