program guiademinerais;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, udatamodule, sqlite3laz, tachartlazaruspkg, sdflaz, bgrabitmappack,
  lazreport, ubibliografia, uformimpressao, UnitAjuda, unitSplash, crt,
  unitfichaespecie, unitBlobFields, unitaddmineral, unitselectdatabase,
  unitadddatabase, unitremovemineral, unittranslatefile, unitformconfigurations,
  frameficha, unitframelist, unitframesimplefilter, unitframeimages,
  unitadvancedfilter, unitformmodifications;

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
  //to do: forms criados em tempo real
  Application.CreateForm(TFormFichaEspecie, FormFichaEspecie);
  Application.CreateForm(TFormSelectDatabase, FormSelectDatabase);
  Application.CreateForm(TFormBibliografia, FormBibliografia);
  Application.CreateForm(TFormImpressao, FormImpressao);
  Application.CreateForm(TFormAjuda, FormAjuda);
  Application.CreateForm(TFormAddMineral, FormAddMineral);
  Application.CreateForm(TFormAddDatabase, FormAddDatabase);
  Application.CreateForm(TFormRemoveMineral, FormRemoveMineral);
  //Application.CreateForm(TFormTranslate, FormTranslate);
  //Application.CreateForm(TFormConfigurations, FormConfigurations);
  Application.CreateForm(TFormAdvancedFilter, FormAdvancedFilter);
  Application.CreateForm(TFormModified, FormModified);
  Application.Run;
end.

