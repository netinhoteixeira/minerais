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
    procedure ArquivoPlanilha(Especie:String; Rruff_id:String; Digito:String;
        Tipo:String; Equipamento, DirecaoLaser:String);
    { public declarations }
  end;

  Const
  Microssonda: string = 'Microssonda';
  EspectroRAMAN: string = 'RAMAN';
  AmplaVarredura: string = 'Ampla Varredura';
  Infravermelho: string = 'Espectro Infravermelho';
  Difracao: string = 'Difracao';

var
  FormPlanilha: TFormPlanilha;

implementation

uses
  udatamodule;

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
    Dados.DeterminaArquivo(Especie, Rruff_id,Digito, 'Microssonda', '', '');
  if Dados.SdfDataSetPlanilhaMicrossonda.FileName <> EmptyStr then
  begin
    FormPlanilha.Show;
    Dados.SdfDataSetPlanilhaMicrossonda.Open;
  end
  else
    DBGrid1.Clear;
end;

procedure TFormPlanilha.ArquivoPlanilha(Especie: String; Rruff_id: String;
  Digito: String; Tipo: String; Equipamento, DirecaoLaser:String);
var Diretorio:String;
begin
  if Tipo = Microssonda then
  begin
    Diretorio:=Dados.DeterminaArquivo(Especie,
       Rruff_id,Digito,'Microssonda', Equipamento , '');
  end
  else
  if Tipo = EspectroRaman then
  begin
    Diretorio:=Dados.DeterminaArquivo(Especie,
       Rruff_id,Digito,'RAMAN',Equipamento, DirecaoLaser);
  end
  else
  if Tipo = AmplaVarredura then
  begin
    Diretorio:=Dados.DeterminaArquivo(Especie,
       Rruff_id,Digito,AmplaVarredura, Equipamento, DirecaoLaser);
  end
  else
  if Tipo = Infravermelho then
  begin
    Diretorio:=Dados.DeterminaArquivo(Especie,
       Rruff_id,Digito, Infravermelho, Equipamento, '');
  end
  else
  if Tipo = Difracao then
  begin
    Diretorio:=Dados.DeterminaArquivo(Especie,
       Rruff_id,Digito, Difracao, Equipamento, '');
  end;

  if Diretorio <> EmptyStr then
  begin
      DataSourcePlanilha:=Dados.CriarDataset(Diretorio);
      DBGrid1.DataSource:=DatasourcePlanilha;
  end;
end;

{$R *.lfm}

end.

