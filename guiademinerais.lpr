program guiademinerais;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uprincipal, bgracontrols, udatamodule, sqlite3laz, richmemopackage,
  tachartlazaruspkg, sdflaz, lazreport, uselecionabd, ubibliografia,
  uformimpressao, UnitAjuda, unitSplash, crt, unitgraficos,
  unitPlanilha, unitequipamentos, unitrruff_id, unitfichaamostra,
  unitfichaespecie, unitAdicionarDadosrruff;

{$R *.res}

begin
  Application.Title:='Guia de Minerais';
  Application.Initialize;
  FormSplash:=TFormSplash.Create(nil);
  FormSplash.Show;
  FormSplash.Update;
  Application.CreateForm(TDados, Dados);
  Delay(1000);
  FormSplash.Hide;
  FormSplash.Free;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormBibliografia, FormBibliografia);
  Application.CreateForm(TFormImpressao, FormImpressao);
  Application.CreateForm(TFormAjuda, FormAjuda);
  Application.CreateForm(TFormInstrumentos, FormInstrumentos);
  Application.CreateForm(TFormAdicionaRruff, FormAdicionaRruff);
  Application.CreateForm(TFormAddImage, FormAddImage);
  Application.Run;
end.

