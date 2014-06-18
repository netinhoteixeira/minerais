program guiademinerais;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uprincipal, udatamodule, sqlite3laz, richmemopackage,
  tachartlazaruspkg, sdflaz, lazreport, ubibliografia,
  uformimpressao, UnitAjuda, unitSplash, crt, unitgraficos, unitPlanilha,
  unitequipamentos, unitrruff_id, unitfichaamostra, unitfichaespecie,
  unitBlobFields, unitaddmineral,
  unitselectdatabase, unitadddatabase, unitaddsample, unitremovesample;

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
  Application.CreateForm(TFormPlanilha, FormPlanilha);
  Application.CreateForm(TFormAddMineral, FormAddMineral);
  Application.CreateForm(TFormSelectDatabase, FormSelectDatabase);
  Application.CreateForm(TFormAddDatabase, FormAddDatabase);
  Application.CreateForm(TFormAddSample, FormAddSample);
  Application.CreateForm(TFormRemoveSample, FormRemoveSample);
  Application.Run;
end.

