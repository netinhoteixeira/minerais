unit unittranslatefile;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCLabel, Forms, Controls, Graphics,
  Dialogs, DBCtrls, StdCtrls, Buttons, ActnList, UnitLanguage;

type

  { TFormTranslate }

  TFormTranslate = class(TForm)
    ActionClose: TAction;
    ActionSave: TAction;
    ActionOpen: TAction;
    ActionList1: TActionList;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabel3: TBCLabel;
    BCLabelPassword: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    EditPassword: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SpeedButtonOpen: TSpeedButton;
    SpeedButtonSave: TSpeedButton;
    SpeedButtonClose: TSpeedButton;
    SpeedButtonSaveAndUse: TSpeedButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionOpenExecute(Sender: TObject);
    procedure ActionSaveExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    procedure MemoAppend;
    { private declarations }
  public
    { public declarations }
  end;

  const LinesNumber:Integer = 166;

var
  FormTranslate: TFormTranslate;
  TranslateFile: TextFile;

implementation

{$R *.lfm}

{ TFormTranslate }

procedure TFormTranslate.FormShow(Sender: TObject);
begin
  Label1.Caption:='Lines: '+IntToStr(Memo1.Lines.Count+1)+ ' - Original: '
  +IntToStr(LinesNumber);
end;

procedure TFormTranslate.Memo1Change(Sender: TObject);
begin
  Label1.Caption:='Lines: '+IntToStr(Memo1.Lines.Count+1)+ ' - Original: '
  +IntToStr(LinesNumber);
end;

procedure TFormTranslate.MemoAppend;
begin
  Memo1.Clear;
  Memo1.Append(Lang.Minerals);
  Memo1.Append(Lang.Analisys);
  Memo1.Append(Lang.Samples);
  Memo1.Append(Lang.SubSamples);
  Memo1.Append(Lang.AddMineral);
  Memo1.Append(Lang.RemoveMineral);
  Memo1.Append(Lang.AddSample);
  Memo1.Append(Lang.RemoveSample);
  Memo1.Append(Lang.TypeTheNameOfDatabase);
  Memo1.Append(Lang.CreateMineralDatabase);
  Memo1.Append(Lang.SelectMineralDatabase);
  Memo1.Append(Lang.CreateAnalisysDatabase);
  Memo1.Append(Lang.SelectAnalisysDatabase);
  Memo1.Append(Lang.Add);
  Memo1.Append(Lang.Remove);
  Memo1.Append(Lang.RemoveAll);
  Memo1.Append(Lang.AddImage);
  Memo1.Append(Lang.RemoveImage);
  Memo1.Append(Lang.Database);
  Memo1.Append(Lang.Clear);
  Memo1.Append(Lang.FilterByMineral);
  Memo1.Append(Lang.FilterById);
  Memo1.Append(Lang.NoRecords);
  Memo1.Append(Lang.OneRecord);
  Memo1.Append(Lang.Maximum);
  Memo1.Append(Lang.Minimum);
  Memo1.Append(Lang.GeneralInformation);
  Memo1.Append(Lang.PhysicalProperties);
  Memo1.Append(Lang.OpticalProperties);
  Memo1.Append(Lang.Crystallography);
  Memo1.Append(Lang.Image);
  Memo1.Append(Lang.Name);
  Memo1.Append(Lang.Composition);
  Memo1.Append(Lang.MineralClass);
  Memo1.Append(Lang.Subclass);
  Memo1.Append(Lang.Group);
  Memo1.Append(Lang.Subgroup);

  Memo1.Append(Lang.Occurrence);
  Memo1.Append(Lang.Association);
  Memo1.Append(Lang.Distinction);
  Memo1.Append(Lang.Alteration);
  Memo1.Append(Lang.Usage);

  Memo1.Append(Lang.Color);
  Memo1.Append(Lang.Streak);
  Memo1.Append(Lang.Luster);
  Memo1.Append(Lang.Cleavage);
  Memo1.Append(Lang.Fracture);
  Memo1.Append(Lang.Magnetism);
  Memo1.Append(Lang.Luminescence);

  Memo1.Append(Lang.Diaphanousness);
  Memo1.Append(Lang.OpticalSignal);
  Memo1.Append(Lang.RefractiveIndex);
  Memo1.Append(Lang.Angle2V);
  Memo1.Append(Lang.InterferenceColor);
  Memo1.Append(Lang.BladeColor);
  Memo1.Append(Lang.SignElongation);
  Memo1.Append(Lang.Birefringence);
  Memo1.Append(Lang.Relief);
  Memo1.Append(Lang.Extinction);

  Memo1.Append(Lang.CrystallineSystem);
  Memo1.Append(Lang.CrystalineClass);
  Memo1.Append(Lang.Symbology);
  Memo1.Append(Lang.Habit);

  Memo1.Append(Lang.Order);
  Memo1.Append(Lang.Alphabetical);
  Memo1.Append(Lang.Hardness);
  Memo1.Append(Lang.Density);

  Memo1.Append(Lang.ExistingSamples);
  Memo1.Append(Lang.CreateSubSampling);
  Memo1.Append(Lang.TypeOfAnalysis);
  Memo1.Append(Lang.Direction);
  Memo1.Append(Lang.ExistingSubsamples);

  Memo1.Append(Lang.Raman);
  Memo1.Append(Lang.BroadScan);
  Memo1.Append(Lang.Infrared);
  Memo1.Append(Lang.Difraction);

  Memo1.Append(Lang.AddChemistryImage);
  Memo1.Append(Lang.RemoveChemistryImage);

  Memo1.Append(Lang.AddMicroprobeData);
  Memo1.Append(Lang.ViewMicroprobeData);
  Memo1.Append(Lang.RemoveMicroprobeData);

  Memo1.Append(Lang.AddRamanData);
  Memo1.Append(Lang.ViewRamanData);
  Memo1.Append(Lang.RemoveRamanData);

  Memo1.Append(Lang.AddBroadScanData);
  Memo1.Append(Lang.ViewBroadScanData);
  Memo1.Append(Lang.RemoveBroadScanData);

  Memo1.Append(Lang.AddInfraredData);
  Memo1.Append(Lang.ViewInfraredData);
  Memo1.Append(Lang.RemoveInfraredData);

  Memo1.Append(Lang.AddDifractionData);
  Memo1.Append(Lang.ViewDifractionData);
  Memo1.Append(Lang.RemoveDifractionData);

  Memo1.Append(Lang.Description);
  Memo1.Append(Lang.ChemichalAnalysis);
  Memo1.Append(Lang.RamanSpectroscopy);
  Memo1.Append(Lang.BroadScanWithSpectralArtifacts);
  Memo1.Append(Lang.InfraredSpectrum);
  Memo1.Append(Lang.MineralPowderDiffraction);

  Memo1.Append(Lang.AddData);
  Memo1.Append(Lang.ViewData);
  Memo1.Append(Lang.RemoveData);

  Memo1.Append(Lang.Specie);
  Memo1.Append(Lang.Identification);
  Memo1.Append(Lang.IdealChemistry);
  Memo1.Append(Lang.Locality);
  Memo1.Append(Lang.Source);
  Memo1.Append(Lang.Owner);
  Memo1.Append(Lang.Situation);

  Memo1.Append(Lang.Microprobe);
  Memo1.Append(Lang.ChemicalMeasure);
  Memo1.Append(Lang.LaserPolarizationDirection);
  Memo1.Append(Lang.PinId);
  Memo1.Append(Lang.Orientation);
  Memo1.Append(Lang.Equipment);
  Memo1.Append(Lang.Equipments);
  Memo1.Append(Lang.Wavelength);

  Memo1.Append(Lang.Resolution);

  Memo1.Append(Lang.CellRefinement);
  Memo1.Append(Lang.a);
  Memo1.Append(Lang.b);
  Memo1.Append(Lang.c);
  Memo1.Append(Lang.alpha);
  Memo1.Append(Lang.beta);
  Memo1.Append(Lang.gamma);
  Memo1.Append(Lang.Volume);

  Memo1.Append(Lang.Print);
  Memo1.Append(Lang.ShowFilter);
  Memo1.Append(Lang.ShowImages);
  Memo1.Append(Lang.Bibliography);
  Memo1.Append(Lang.FontSize);

  Memo1.Append(Lang.StrFile);
  Memo1.Append(Lang.Edit);
  Memo1.Append(Lang.Exhibit);
  Memo1.Append(Lang.Filter);
  Memo1.Append(Lang.Images);
  Memo1.Append(Lang.Data);

  Memo1.Append(Lang.Confirm);
  Memo1.Append(Lang.Help);
  Memo1.Append(Lang.Save);
  Memo1.Append(Lang.SaveAndUse);
  Memo1.Append(Lang.Edit);
  Memo1.Append(Lang.Exit);
  Memo1.Append(Lang.Close);

  Memo1.Append(Lang.AllFromTheList);
  Memo1.Append(Lang.SelectedMineral);
  Memo1.Append(Lang.GeneralAndPhysicalProperties);
  Memo1.Append(Lang.OpticalAndCrystProperties);
  Memo1.Append(Lang.NumberOfCopies);
  Memo1.Append(Lang.ChangePrintReport);
  Memo1.Append(Lang.OpenFileReport);

  Memo1.Append(Lang.CurrentDatabase);
  Memo1.Append(Lang.CurrentLanguage);
  Memo1.Append(Lang.SelectLanguageFile);
  Memo1.Append(Lang.CreateLanguageFile);
  Memo1.Append(Lang.NoDatabaseSelected);
  Memo1.Append(Lang.ThereIsNoSelectedSample);
  Memo1.Append(Lang.ThereIsNoSelectedSubsample);
  Memo1.Append(Lang.TheSelectedDatabaseIsNotValid);
  Memo1.Append(Lang.ChooseASampleToAddData);
  Memo1.Append(Lang.ChooseASampleToAddImage);
  Memo1.Append(Lang.ChooseASubsampleToAddImage);
  Memo1.Append(Lang.ThereIsAlreadyARecordWithThatName);
  Memo1.Append(Lang.YouMustRestartTheProgram);
end;

procedure TFormTranslate.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:='All Files | *.csv; *.dat; *.txt;';
  SaveDialog1.Filter:='All Files | *.csv; *.dat; *.txt;';
  //Combobox1.ItemIndex:=Combobox1.Items.IndexOf(Lang);
  MemoAppend;
  SpeedButtonOpen.Hint:=Lang.Open;
  SpeedButtonSave.Hint:=Lang.Save;
  SpeedButtonSaveAndUse.Hint:=Lang.SaveAndUse;
end;

procedure TFormTranslate.ActionOpenExecute(Sender: TObject);
var Lines:String;
begin
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName <> EmptyStr then
    begin
      AssignFile(TranslateFile, OpenDialog1.FileName);
      //Rewrite(TranslateFile);
      While not EOF(TranslateFile) do
        Readln(TranslateFile, Lines);
      Memo1.Clear;
      Memo1.Append(Lines);
      CloseFile(TranslateFile);
    end;
  end;
end;

procedure TFormTranslate.ActionCloseExecute(Sender: TObject);
begin
  FormTranslate.Hide;
end;

procedure TFormTranslate.ActionSaveExecute(Sender: TObject);
begin
  if Edit1.Text <> EmptyStr then
  begin;
    if ((Memo1.Lines.Count) <> (LinesNumber-1)) then
    begin
      ShowMessage('Number of lines invalid.');
    end
    else
    begin
      if SaveDialog1.Execute then
        if SaveDialog1.FileName<> EmptyStr then
        begin
          AssignFile(TranslateFile, SaveDialog1.FileName);
          Rewrite(TranslateFile);
          Write(TranslateFile, Memo1.Lines.Text);
          CloseFile(TranslateFile);
        end;
    end;
  end
  else
    ShowMessage('Type the name of language.');
end;

procedure TFormTranslate.ComboBox1Change(Sender: TObject);
begin
  SetLanguage(Trim(LowerCase(Combobox1.Text)));
  MemoAppend;
end;

end.

