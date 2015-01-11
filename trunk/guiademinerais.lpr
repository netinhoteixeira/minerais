program guiademinerais;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,  udatamodule, sqlite3laz, richmemopackage,
  tachartlazaruspkg, sdflaz, lazreport, ubibliografia,
  uformimpressao, UnitAjuda, unitSplash, crt,
  unitfichaespecie,
  unitBlobFields, unitaddmineral,
  unitselectdatabase, unitadddatabase,
  unitremovemineral, unitFormLanguage, unittranslatefile;

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
  Application.CreateForm(TFormFichaEspecie, FormFichaEspecie);
  //Application.CreateForm(TFormSelectDatabase, FormSelectDatabase);
  Application.CreateForm(TFormBibliografia, FormBibliografia);
  Application.CreateForm(TFormImpressao, FormImpressao);
  Application.CreateForm(TFormAjuda, FormAjuda);
  Application.CreateForm(TFormAddMineral, FormAddMineral);
  Application.CreateForm(TFormAddDatabase, FormAddDatabase);
  Application.CreateForm(TFormRemoveMineral, FormRemoveMineral);
  Application.CreateForm(TFormLanguage, FormLanguage);
  Application.CreateForm(TFormTranslate, FormTranslate);
  Application.Run;
end.

