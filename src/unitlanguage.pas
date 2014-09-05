unit unitLanguage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  Language = record
    Exit: String;
    Close:String;
    Help:String;
    Save:String;
    Edit:String;
    Confirm:String;

    CurrentDatabase:String;
    CurrentLanguage:String;
    SelectLanguageFile:String;
    CreateLanguageFile:String;
    NoDatabaseSelected:String;
    ThereIsNoSelectedSample:String;
    ThereIsNoSelectedSubsample:String;
    TheSelectedDatabaseIsNotValid:String;
    ChooseASampleToAddData:String;
    ChooseASampleToAddImage:String;
    ChooseASubsampleToAddImage:String;
    ThereIsAlreadyARecordWithThatName:String;
    YouMustRestartTheProgram:String;

    Minerals: String;
    Analisys: String;
    Samples : String;
    SubSamples: String;
    AddMineral: String;
    RemoveMineral: String;
    AddSample :String;
    RemoveSample:String;
    RemoveSubSample:String;
    CreateMineralDatabase: String;
    SelectMineralDatabase: String;
    CreateAnalisysDatabase:String;
    SelectAnalisysDatabase:String;

    Add,Remove,
    RemoveAll:String;

    AddImage:String;
    RemoveImage:String;
    AddChemistryImage:String;
    RemoveChemistryImage:String;

    AddMicroprobeData:String;
    ViewMicroprobeData:String;
    RemoveMicroprobeData:String;

    AddRamanData:String;
    ViewRamanData:String;
    RemoveRamanData:String;

    AddBroadScanData:String;
    ViewBroadScanData:String;
    RemoveBroadScanData:String;

    AddInfraredData:String;
    ViewInfraredData:String;
    RemoveInfraredData:String;

    AddDifractionData:String;
    ViewDifractionData:String;
    RemoveDifractionData:String;

    Order:String;
    Alphabetical: String;
    Hardness: String;
    Density: String;

    Print:String;
    ShowFilter:String;
    ShowImages:String;
    Bibliography:String;
    FontSize:String;

    Maximum: String;
    Minimum: String;

    GeneralInformation:String;
    PhysicalProperties:String;
    OpticalProperties:String;
    Crystallography:String;
    Image:String;

    Name: String;
    Composition: String;
    MineralClass: String;
    Subclass: String;
    Group: String;
    Subgroup: String;
    Occurrence: String;
    Association: String;
    Distinction: String;
    Alteration: String;
    Usage: String;

    Color: String;
    Streak: String;
    Luster: String; //Brightness
    Cleavage: String;
    Fracture: String;
    Magnetism: String;
    Luminescence:String;

    Diaphanousness:String;
    OpticalSignal:String;
    RefractiveIndex:String;
    Angle2V:String;
    InterferenceColor:String;
    BladeColor:String;
    SignElongation:String;
    Birefringence:String;
    Relief:String;
    Extinction:String;

    CrystallineSystem:String;
    CrystalineClass:String;
    Symbology:String;
    Habit:String;

    FilterByMineral:String;
    FilterById:String;

    Description:String;
    ChemichalAnalysis:String;
    RamanSpectroscopy:String;
    BroadScanWithSpectralArtifacts:String;
    InfraredSpectrum:String;
    MineralPowderDiffraction:String;

    AddData:String;
    ViewData:String;
    RemoveData:String;

    Specie:String;
    Identification:String;
    IdealChemistry:String;
    Locality:String;
    Source:String;
    Owner:String;
    Situation:String;

    Microprobe:String;
    ChemicalMeasure:String; //confirmar
    LaserPolarizationDirection:String;//confirmar
    PinId:String;
    Orientation:String;
    Equipment:String;
    Equipments:String;
    Wavelength:String;

    Resolution:String;

    CellRefinement:String;
    a,b,c, alpha, beta, gamma:String;
    Volume:String;

    //formaddsample
    ExistingSamples:String;
    CreateSubSampling:String;
    TypeOfAnalysis:String;
    Direction:String;
    ExistingSubsamples:String;

    //forminstrumentos
    //colocar os hints

    //formimpressao
    AllFromTheList:String;
    SelectedMineral:String;
    GeneralAndPhysicalProperties:String;
    OpticalAndCrystProperties:String;
    NumberOfCopies:String;
    ChangePrintReport:String;
    OpenFileReport:String;

    //
    TypeTheNameOfDatabase:String;

    //hints
    Database:String;
    Clear:String;
    SelectDatabase:String;

    //contador de registros
    NoRecords:String;
    OneRecord:String;
    Records:String;
  end;

function SetLanguage(Language: String): Boolean;

var Lang:Language;

implementation

function SetLanguage(Language: String): Boolean;
begin
  if (Trim(Lowercase(Language)) = 'português') then
  begin
    Lang.Exit:='Sair';
    Lang.Close:='Fechar';
    Lang.Help:='Ajuda';
    Lang.Save:='Salvar';
    Lang.Edit:='Editar';
    Lang.Confirm:='Confirmar';

    Lang.CurrentDatabase:='Banco de dados atual:';
    Lang.CurrentLanguage:='Idioma atual';
    Lang.SelectLanguageFile:='Selecionar arquivo de tradução';
    Lang.CreateLanguageFile:='Criar arquivo de tradução';

    Lang.NoDatabaseSelected:='Não há banco de dados selecionado.';
    Lang.ThereIsNoSelectedSample:='Não há amostra selecionada.';
    Lang.ThereIsNoSelectedSubsample:='Não há subamostra selecionada.';
    Lang.TheSelectedDatabaseIsNotValid:='O banco de dados selecionado não é válido.';
    Lang.ChooseASampleToAddData:='Escolha uma amostra para adicionar dados.';
    Lang.ChooseASampleToAddImage:='Escolha uma amostra para adicionar imagem.';
    Lang.ChooseASubsampleToAddImage:='Escolha uma subamostra para adicionar imagem.';
    Lang.ThereIsAlreadyARecordWithThatName:='Já existe um registro com esse nome.';
    Lang.YouMustRestartTheProgram:='Você deve reiniciar o programa para que '+
      'todas as configurações tenham efeito.';

    Lang.Minerals:='Minerais';
    Lang.Analisys:='Análises';
    Lang.Samples:= 'Amostras';
    Lang.SubSamples:='Subamostras';
    Lang.AddMineral:='Adicionar mineral';
    Lang.RemoveMineral:='Remover mineral';
    Lang.AddSample :='Adicionar amostra';
    Lang.RemoveSample:='Remover amostra';
    Lang.RemoveSubSample:='Remover subamostra';
    Lang.CreateMineralDatabase:='Criar banco de dados de minerais';
    Lang.SelectMineralDatabase:='Selecionar banco de dados de minerais';
    Lang.CreateAnalisysDatabase:='Criar banco de dados de análises';
    Lang.SelectAnalisysDatabase:='Selecionar banco de dados de análises';

    Lang.Add:='Adicionar';
    Lang.Remove:='Remover';
    Lang.RemoveAll:='Remover todos';

    Lang.AddImage:='Adicionar imagem';
    Lang.RemoveImage:='Remover imagem';
    Lang.AddChemistryImage:='Adicionar imagem de análise química';
    Lang.RemoveChemistryImage:='Remover imagem de análise química';

    Lang.AddMicroprobeData:='Adicionar dados de microssonda';
    Lang.ViewMicroprobeData:='Visualizar dados de microssonda';
    Lang.RemoveMicroprobeData:='Remover dados de microssonda';

    Lang.AddRamanData:='Adicionar dados de espectroscopia RAMAN';
    Lang.ViewRamanData:='Visualzar dados de espectroscopia RAMAN';
    Lang.RemoveRamanData:='Remover dados de espectroscopia RAMAN';

    Lang.AddBroadScanData:='Adicionar dados de varredura';
    Lang.ViewBroadScanData:='Visualizar dados de varredura';
    Lang.RemoveBroadScanData:='Remover dados de varredura';

    Lang.AddInfraredData:='Adicionar dados de espectro infravermelho';
    Lang.ViewInfraredData:='Visualizar dados de espectro infravermelho';
    Lang.RemoveInfraredData:='Remover dados de espectro infravermelho';

    Lang.AddDifractionData:='Adicionar dados de difração';
    Lang.ViewDifractionData:='Visualizar dados de difração';
    Lang.RemoveDifractionData:='Remover dados de difração';

    Lang.Order:='Ordem';
    Lang.Alphabetical:='Alfabética';
    Lang.Hardness:='Dureza';
    Lang.Density:='Densidade';

    Lang.Print:='Imprimir';
    Lang.ShowFilter:='Mostrar/esconder filtro';
    Lang.ShowImages:='Mostrar/esconder imagens';
    Lang.Bibliography:='Bibliografia';
    Lang.FontSize:='Tamanho da fonte';

    Lang.Maximum:='máximo';
    Lang.Minimum:='minimo';

    Lang.GeneralInformation:='Informações Gerais';
    Lang.PhysicalProperties:='Propriedades Físicas';
    Lang.OpticalProperties:='Propriedades Ópticas';
    Lang.Crystallography:='Cristalografia';
    Lang.Image:='Imagem';

    Lang.Name:='Nome';
    Lang.Composition:='Composição';
    Lang.MineralClass:='Classe';
    Lang.Subclass:='Subclasse';
    Lang.Group:='Grupo';
    Lang.Subgroup:='Subgrupo';
    Lang.Occurrence:='Ocorrência';
    Lang.Association:='Associação';
    Lang.Distinction:='Distinção';
    Lang.Alteration:='Alteração';
    Lang.Usage:='Aplicação';

    Lang.Color:='Cor';
    Lang.Streak:='Traço';
    Lang.Luster:='Brilho';
    Lang.Cleavage:='Clivagem';
    Lang.Fracture:='Fratura';
    Lang.Magnetism:='Magnetismo';
    Lang.Luminescence:='Luminescência';

    Lang.Diaphanousness:='Diafaneidade';
    Lang.OpticalSignal:='Sinal Óptico';
    Lang.RefractiveIndex:='Índice de Refração';
    Lang.Angle2V:='Ângulo 2V';
    Lang.InterferenceColor:='Cor de Interferência';
    Lang.BladeColor:='Cor da Lâmina';
    Lang.SignElongation:='Sinal de Elongação';
    Lang.Birefringence:='Birrefringência';
    Lang.Relief:='Relevo';
    Lang.Extinction:='Extinção';

    Lang.CrystallineSystem:='Sistema Cristalino';
    Lang.CrystalineClass:='Classe Cristalina';
    Lang.Symbology:='Simbologia';
    Lang.Habit:='Hábito';

    Lang.FilterByMineral:='Filtro por mineral';
    Lang.FilterById:='Filtro por identificação';

    Lang.Description:='Descrição';
    Lang.ChemichalAnalysis:='Análise Química';
    Lang.RamanSpectroscopy:='Espectroscopia RAMAN';
    Lang.BroadScanWithSpectralArtifacts:='Varredura Ampla com Artefatos Espectrais';
    Lang.InfraredSpectrum:='Espectro Infravermelho';
    Lang.MineralPowderDiffraction:='Difração do Pó Mineral';

    Lang.AddData:='Adicionar dados';
    Lang.ViewData:='Visualizar dados';
    Lang.RemoveData:='Remover dados';

    Lang.Specie:='Espécie';
    Lang.Identification:='Identificação';
    Lang.IdealChemistry:='Química ideal';
    Lang.Locality:='Localidade';
    Lang.Source:='Fonte';
    Lang.Owner:='Proprietário';
    Lang.Situation:='Situação';

    Lang.Microprobe:='Microssonda';
    Lang.ChemicalMeasure:='Química medida';
    Lang.LaserPolarizationDirection:='Direção de polarização do laser';
    Lang.PinId:='Identificação Pin';
    Lang.Orientation:='Orientação';
    Lang.Equipment:='Instrumento';
    Lang.Equipments:='Equipamentos';
    Lang.Wavelength:='Comprimento de onda';

    Lang.Resolution:='Resolução';

    Lang.CellRefinement:='Refinamento celular';
    Lang.a:='a';
    Lang.b:='b';
    Lang.c:='c';
    Lang.Alpha:='Alpha';
    Lang.Beta:='Beta';
    Lang.gamma:='Gamma';
    Lang.Volume:='Volume';

    //formaddsample
    Lang.ExistingSamples:='Amostras existentes';
    Lang.CreateSubSampling:='Criar subamostragem';
    Lang.TypeOfAnalysis:='Tipo de análise';
    Lang.Direction:='Direção';
    Lang.ExistingSubsamples:='Subamostras existentes';

    //forminstrumentos
    //colocar os hints

    //formimpressao
    Lang.AllFromTheList:='Todos da lista';
    Lang.SelectedMineral:='Mineral selecionado';
    Lang.GeneralAndPhysicalProperties:='Propriedades físicas e gerais';
    Lang.OpticalAndCrystProperties:='Propriedades Ópticas e Cristalográficas';
    Lang.NumberOfCopies:='Número de cópias';
    Lang.ChangePrintReport:='Modificar relatório de impressão';
    Lang.OpenFileReport:='Abrir relatório de impressão';

    //
    Lang.TypeTheNameOfDatabase:='Digite o nome do banco de dados';

    //hints
    Lang.Database:='Banco de dados';
    Lang.Clear:='Limpar';
    Lang.SelectDatabase:='Selecionar banco de dados';

    //contador de registros
    Lang.NoRecords:='Nenhum registro';
    Lang.OneRecord:='1 Registro';
    Lang.Records:=' registros';
    Result:=True;
  end
  else
  if Upcase(Language) = 'ENGLISH' then
  begin
    Lang.Exit:='Exit';
    Lang.Close:='Close';
    Lang.Help:='Help';
    Lang.Save:='Save';
    Lang.Edit:='Edit';
    Lang.Confirm:='Confirm';

    Lang.CurrentDatabase:='Current database:';
    Lang.CurrentLanguage:='Current language';
    Lang.SelectLanguageFile:='Select translation file';
    Lang.CreateLanguageFile:='Create translation file';

    Lang.NoDatabaseSelected:='No database selected.';
    Lang.ThereIsNoSelectedSample:='There is no selected sample.';
    Lang.ThereIsNoSelectedSubsample:='There is no selected subsample.';
    Lang.TheSelectedDatabaseIsNotValid:='The selected database is not valid.';
    Lang.ChooseASampleToAddData:='Choose a sample to add data.';
    Lang.ChooseASampleToAddImage:='Choose a sample to add data.';
    Lang.ChooseASubsampleToAddImage:='Choose a sample to add image.';
    Lang.ThereIsAlreadyARecordWithThatName:='There is already a record with that name.';
    Lang.YouMustRestartTheProgram:='You must restart the program to all settings take effect.';

    Lang.Minerals:='Minerals';
    Lang.Analisys:='Analysis';
    Lang.Samples:= 'Samples';
    Lang.SubSamples:='Subsamples';
    Lang.AddMineral:='Add mineral';
    Lang.RemoveMineral:='Remove mineral';
    Lang.AddSample :='Add sample';
    Lang.RemoveSample:='Remove sample';
    Lang.RemoveSubSample:='Remove subsample';
    Lang.CreateMineralDatabase:='Create database of minerals';
    Lang.SelectMineralDatabase:='Select database of minerals';
    Lang.CreateAnalisysDatabase:='Create database of analysis';
    Lang.SelectAnalisysDatabase:='Select database of analysis';

    Lang.Add:='Add';
    Lang.Remove:='Remove';
    Lang.RemoveAll:='Remove all';

    Lang.AddImage:='Add image';
    Lang.RemoveImage:='Remove image';
    Lang.AddChemistryImage:='Add image of chemical analysis';
    Lang.RemoveChemistryImage:='Remove image of chemical analysis';

    Lang.AddMicroprobeData:='Add microprobe data';
    Lang.ViewMicroprobeData:='View microprobe data';
    Lang.RemoveMicroprobeData:='Remove microprobe data';

    Lang.AddRamanData:='Add RAMAN spectroscopy data';
    Lang.ViewRamanData:='View RAMAN spectroscopy data';
    Lang.RemoveRamanData:='Remove RAMAN spectroscopy data';

    //obs: verificar tradução de broad scan
    Lang.AddBroadScanData:='Add broad scan date';
    Lang.ViewBroadScanData:='Visualize broad scan date';
    Lang.RemoveBroadScanData:='Remove broad scan date';

    Lang.AddInfraredData:='Add data from the infrared spectrum';
    Lang.ViewInfraredData:='View data from the infrared spectrum';
    Lang.RemoveInfraredData:='Remove data from the infrared spectrum';

    Lang.AddDifractionData:='Adicionar dados de varredura';
    Lang.ViewDifractionData:='Visualizar dados de varredura';
    Lang.RemoveDifractionData:='Remover dados de varredura';

    Lang.Order:='Order';
    Lang.Alphabetical:='Alphabetical';//ou seria alphabetic ????
    Lang.Hardness:='Hardness';
    Lang.Density:='Density';

    Lang.Print:='Print';
    Lang.ShowFilter:='Show/hide filter';
    Lang.ShowImages:='Show/hide images';
    Lang.Bibliography:='Bibliography';
    Lang.FontSize:='Font size';

    Lang.Maximum:='maximum';
    Lang.Minimum:='minimum';

    Lang.GeneralInformation:='General Information';
    Lang.PhysicalProperties:='Physical Properties';
    Lang.OpticalProperties:='Optical Properties';
    Lang.Crystallography:='Crystallography';
    Lang.Image:='Image';

    Lang.Name:='Name';
    Lang.Composition:='Composition';
    Lang.MineralClass:='Class';
    Lang.Subclass:='Subclass';
    Lang.Group:='Group';
    Lang.Subgroup:='Subgroup';
    Lang.Occurrence:='Occurrence';
    Lang.Association:='Association';
    Lang.Distinction:='Distinction';
    Lang.Alteration:='Alteration';
    Lang.Usage:='Use';

    Lang.Color:='Color';
    Lang.Streak:='Streak';
    Lang.Luster:='Brightness';
    Lang.Cleavage:='Cleavage';
    Lang.Fracture:='Fracture';
    Lang.Magnetism:='Magnetism';
    Lang.Luminescence:='Luminescence';

    Lang.Diaphanousness:='Diaphanousness';
    Lang.OpticalSignal:='Optical Signal';
    Lang.RefractiveIndex:='Refractive Index';
    Lang.Angle2V:='2V Angle';
    Lang.InterferenceColor:='Interference Color';
    Lang.BladeColor:='Color Blade';
    Lang.SignElongation:='Sign Elongation';//revisar
    Lang.Birefringence:='Birefringence';
    Lang.Relief:='Relief';
    Lang.Extinction:='Extinction';

    Lang.CrystallineSystem:='Crystalline System';
    Lang.CrystalineClass:='Crystalline Class';
    Lang.Symbology:='Symbology';
    Lang.Habit:='Habit';

    Lang.FilterByMineral:='Filter by mineral';
    Lang.FilterById:='Filter by id';

    Lang.Description:='Description';
    Lang.ChemichalAnalysis:='Chemical Analysis';
    Lang.RamanSpectroscopy:='Raman Spectroscopy';
    Lang.BroadScanWithSpectralArtifacts:='Broad Scan with Spectral Artifacts';
    Lang.InfraredSpectrum:='Infrared Spectrum';
    Lang.MineralPowderDiffraction:='Mineral Powder Diffraction';

    Lang.AddData:='Add data';
    Lang.ViewData:='View data';
    Lang.RemoveData:='Remove data';

    Lang.Specie:='Specie';
    Lang.Identification:='Id';
    Lang.IdealChemistry:='Ideal chemistry';
    Lang.Locality:='Locality';
    Lang.Source:='Source';
    Lang.Owner:='Owner';
    Lang.Situation:='Situation'; //revisar

    Lang.Microprobe:='Microprobe';
    Lang.ChemicalMeasure:='Chemical measure';
    Lang.LaserPolarizationDirection:='Polarization direction of the laser';//revisar
    Lang.PinId:='Pin id';
    Lang.Orientation:='Orientation';
    Lang.Equipment:='Equipment';
    Lang.Equipments:='Equipments';
    Lang.Wavelength:='Wave-length';

    Lang.Resolution:='Resolution';

    Lang.CellRefinement:='Cell refinement';
    Lang.a:='a';
    Lang.b:='b';
    Lang.c:='c';
    Lang.Alpha:='Alpha';
    Lang.Beta:='Beta';
    Lang.gamma:='Gamma';
    Lang.Volume:='Volume';

    //formaddsample
    Lang.ExistingSamples:='Existing samples';
    Lang.CreateSubSampling:='Create subsampling';
    Lang.TypeOfAnalysis:='Type of analysis';
    Lang.Direction:='Direction';
    Lang.ExistingSubsamples:='Existing subsamples';

    //forminstrumentos
    //colocar os hints

    //formimpressao
    Lang.AllFromTheList:='All from the list';
    Lang.SelectedMineral:='Selected mineral';
    Lang.GeneralAndPhysicalProperties:='General and physical properties';
    Lang.OpticalAndCrystProperties:='Optical and Crystallographic properties';
    Lang.NumberOfCopies:='Number of copies';
    Lang.ChangePrintReport:='Modify print report';
    Lang.OpenFileReport:='Open print report';

    //
    Lang.TypeTheNameOfDatabase:='Enter the name of the database';

    //hints
    Lang.Database:='Database';
    Lang.Clear:='Clear';
    Lang.SelectDatabase:='Select database';

    //contador de registros
    Lang.NoRecords:='No records';
    Lang.OneRecord:='1 record';
    Lang.Records:=' records';
    Result:=True;
  end;
end;

end.

