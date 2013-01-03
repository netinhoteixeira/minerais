program guiademinerais;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uprincipal, bgracontrols, udatamodule, sqlite3laz, richmemopackage,
  lazreport, lazreportpdfexport, uselecionabd, ubibliografia, uformimpressao,
  UnitAjuda
  { you can add units after this };

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  //Application.CreateForm(TFormSelecionaBD, FormSelecionaBD);
  Application.CreateForm(TFormBibliografia, FormBibliografia);
  Application.CreateForm(TFormImpressao, FormImpressao);
  Application.CreateForm(TFormAjuda, FormAjuda);
  Application.Run;
end.

