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
  unitequipamentos, unitfichaamostra, unitfichaespecie,
  unitBlobFields, unitaddmineral,
  unitselectdatabase, unitadddatabase, unitaddsample, unitremovesample,
unitremovemineral;

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
  Application.CreateForm(TFormSelectDatabase, FormSelectDatabase);
  Application.CreateForm(TFormBibliografia, FormBibliografia);
  Application.CreateForm(TFormImpressao, FormImpressao);
  Application.CreateForm(TFormAjuda, FormAjuda);
  Application.CreateForm(TFormInstrumentos, FormInstrumentos);
  Application.CreateForm(TFormPlanilha, FormPlanilha);
  Application.CreateForm(TFormAddMineral, FormAddMineral);
  Application.CreateForm(TFormAddDatabase, FormAddDatabase);
  Application.CreateForm(TFormAddSample, FormAddSample);
  Application.CreateForm(TFormRemoveSample, FormRemoveSample);
  Application.CreateForm(TFormRemoveMineral, FormRemoveMineral);
  Application.Run;
end.

