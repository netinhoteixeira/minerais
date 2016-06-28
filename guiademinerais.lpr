program guiademinerais;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  udatamodule,
  sqlite3laz,
  UnitAjuda,
  unitSplash,
  crt,
  unitfichaespecie,
  unitBlobFields,
  unitaddmineral,
  unitremovemineral,
  frameficha,
  unitframelist,
  unitframesimplefilter,
  unitadvancedfilter,
  unitaddimage,
  uformselectdatabase,
  uformadddatabase,
  uformimages,
  uframeimages;

{$R *.res}

begin
  Application.Title := 'Guia de Minerais';
  Application.Initialize;
  FormSplash := TFormSplash.Create(nil);
  FormSplash.Show;
  FormSplash.Update;
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TFormFichaEspecie, FormFichaEspecie);
  Application.CreateForm(TFormAddMineral, FormAddMineral);
  Application.CreateForm(TFormRemoveMineral, FormRemoveMineral);
  Application.CreateForm(TFormAdvancedFilter, FormAdvancedFilter);
  Application.CreateForm(TFormAddDatabase, FormAddDatabase);
  Application.CreateForm(TFormSelectDatabase, FormSelectDatabase);
  Application.CreateForm(TFormAddImage, FormAddImage);
  Delay(1000);
  FormSplash.Hide;
  FormSplash.Free;
  Application.Run;
end.
