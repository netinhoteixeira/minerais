unit unitPlanilha;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBGrids;

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
    procedure ArquivoMicrossonda(Especie:String; Rruff_id:String);
    { public declarations }
  end;
          {
  Type
    Formulario = record
    Numero: Integer;
    Ativo:Boolean;
  end;   }



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

procedure TFormPlanilha.ArquivoMicrossonda(Especie:String; Rruff_Id:String);
begin
  Dados.SdfDataSetPlanilhaMicrossonda.Close;
  Dados.SdfDataSetPlanilhaMicrossonda.FileName:=
    Dados.DeterminaArquivo(Especie, Rruff_id,'Microssonda', '', '');
  if Dados.SdfDataSetPlanilhaMicrossonda.FileName <> EmptyStr then
  begin
    FormPlanilha.Show;
    Dados.SdfDataSetPlanilhaMicrossonda.Open;
  end
  else
    DBGrid1.Clear;
end;

{$R *.lfm}

end.

