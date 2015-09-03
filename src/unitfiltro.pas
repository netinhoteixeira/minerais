unit UnitFiltro; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  BGRAPanel;

type

  { TFormFiltro }

  TFormFiltro = class(TForm)
    BGRAPanelFiltro: TBGRAPanel;
    ComboBoxClasse: TComboBox;
    ComboBoxDureza_max: TComboBox;
    ComboBoxDureza_min: TComboBox;
    ComboBoxGrupo: TComboBox;
    ComboBoxSubclasse: TComboBox;
    ComboBoxSubgrupo: TComboBox;
    EditAssociacao: TEdit;
    EditDensidade_Max: TEdit;
    EditDensidade_min: TEdit;
    EditNome: TEdit;
    EditOcorrencia: TEdit;
    GroupBoxFiltro: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ToggleBox1: TToggleBox;
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  FormFiltro: TFormFiltro;

implementation

{$R *.lfm}

end.

