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
    Wavelength:String;

    Resolution:String;

    CellRefinement:String;
    //a,b,c, alpha, beta, gamma
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
    NumberOfCopies:String;
    ChangePrintReport:String;
    OpenFileReport:String;

    //
    EnterTheNameOfDatabase:String;

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

    Lang.AddDifractionData:='Adicionar dados de varredura';
    Lang.ViewDifractionData:='Visualizar dados de varredura';
    Lang.RemoveDifractionData:='Remover dados de varredura';

    Lang.Order:='Ordem';
    Lang.Alphabetical:='Alfabética';
    Lang.Hardness:='Dureza';
    Lang.Density:='Densidade';

    Lang.Print:='Imprimir';
    Lang.ShowFilter:='Mostrar/esconder filtro';
    Lang.ShowImages:='Mostrar/esconder imagens';
    Lang.Bibliography:='Bibliografia';
    Lang.FontSize:='Tamanho da fonte';

    Lang.Maximum:='máx';
    Lang.Minimum:='min';

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
    Lang.Wavelength:='Comprimento de onda';

    Lang.Resolution:='Resolução';

    Lang.CellRefinement:='Refinamento celular';
    //a,b,c, alpha, beta, gamma
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
    Lang.NumberOfCopies:='Número de cópias';
    Lang.ChangePrintReport:='Modificar relatório de impressão';
    Lang.OpenFileReport:='Abrir relatório de impressão';

    //
    Lang.EnterTheNameOfDatabase:='Digite o nome do banco de dados';

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

  end;
end;

end.

