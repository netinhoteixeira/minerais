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
  unitaddmineral,
  unitremovemineral,
  frameficha,
  unitframelist,
  unitframesimplefilter,
  unitadvancedfilter,
  unitaddimage,
  uformrmimage,
  uframeimages, unitconfigfile, uformloaddatabase, uformcreatedatabase;

{$R *.res}

begin
  //TODO: Language, AdvancedFilter, Layout(icons), RemoveImages, unitblobfields(adicionar, deletar)
  Application.Title := 'Guia de Minerais';
  Application.Initialize;
  FormSplash := TFormSplash.Create(nil);
  FormSplash.Show;
  FormSplash.Update;
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAddMineral, FormAddMineral);
  Application.CreateForm(TFormRemoveMineral, FormRemoveMineral);
  Application.CreateForm(TFormAdvancedFilter, FormAdvancedFilter);
  Application.CreateForm(TFormAddImage, FormAddImage);
  Application.CreateForm(TFormRmImage, FormRmImage);
  Application.CreateForm(TFormSelectDB, FormSelectDB);
  Application.CreateForm(TFormCreateDB, FormCreateDB);
  //Application.CreateForm(TFormHelp, FormHelp);
  Delay(1000);
  FormSplash.Hide;
  FormSplash.Free;
  Application.Run;
end.
