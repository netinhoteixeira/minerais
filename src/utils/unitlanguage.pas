unit unitLanguage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;

type
  Language = record
    StrFile:String;
    Exhibit:String;

    Filter:String;
    Images:String;

    Data:String;

    Exit: String;
    Close:String;
    Help:String;
    Open:String;
    Save:String;
    SaveAndUse:String;
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

    CreateMineralDatabase: String;
    SelectMineralDatabase: String;

    Add,Remove,
    RemoveAll:String;

    AddImage:String;
    RemoveImage:String;


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
    Locality:String;
    Source:String;

    Microprobe:String;
    ChemicalMeasure:String; //confirmar
    LaserPolarizationDirection:String;//confirmar
    PinId:String;
    Orientation:String;
    Equipment:String;
    Equipments:String;
    Wavelength:String;

    Volume:String;

    //formaddsample

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
    //falta colocar estes dois últimos na tradução instantânea
    Configuration:String;

    SelectRecordToExclude:String;
  end;

  type WhichLanguage = (english, portuguese);

function SetLanguage(Language: WhichLanguage): Boolean;

var Lang:Language;
  LangType:WhichLanguage;

implementation
  uses udatamodule, unitfichaespecie, unitconfigfile;

function SetLanguage(Language: WhichLanguage): Boolean;
begin
  if (Language = Portuguese) then
  begin
    Lang.StrFile:='Arquivo';
    Lang.Exhibit:='Exibir';
    Lang.Filter:='Filtro';
    Lang.Images:='Imagens';
    Lang.Data:='Dados';

    Lang.Exit:='Sair';
    Lang.Close:='Fechar';
    Lang.Help:='Ajuda';
    Lang.Open:='Abrir';
    Lang.Save:='Salvar';
    Lang.SaveAndUse:='Salvar e usar';
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

    Lang.AddMineral:='Adicionar mineral';
    Lang.RemoveMineral:='Remover mineral';

    Lang.CreateMineralDatabase:='Criar banco de dados';
    Lang.SelectMineralDatabase:='Selecionar banco de dados';

    Lang.Add:='Adicionar';
    Lang.Remove:='Remover';
    Lang.RemoveAll:='Remover todos';

    Lang.AddImage:='Adicionar imagem';
    Lang.RemoveImage:='Remover imagem';

    Lang.Order:='Ordem';
    Lang.Alphabetical:='Alfabética';
    Lang.Hardness:='Dureza';
    Lang.Density:='Densidade';

    Lang.Print:='Imprimir';
    Lang.ShowFilter:='Mostrar/esconder filtro';
    Lang.ShowImages:='Mostrar/esconder imagens';
    Lang.Bibliography:='Bibliografia';
    Lang.FontSize:='Tamanho da fonte ';

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

    Lang.AddData:='Adicionar dados';
    Lang.ViewData:='Visualizar dados';
    Lang.RemoveData:='Remover dados';



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

    Lang.Configuration:='Configurações';
    Lang.SelectRecordToExclude:='Selecione um registro para excluir';
    Result:=True;
  end
  else
  if (Language = English) then
  begin
    Lang.StrFile:='File';
    Lang.Exhibit:='Exhibit';   //ou seria Show?
    Lang.Filter:='Filter';
    Lang.Images:='Images';
    Lang.Data:='Data';

    Lang.Exit:='Exit';
    Lang.Close:='Close';
    Lang.Help:='Help';
    Lang.Open:='Open';
    Lang.Save:='Save';
    Lang.SaveAndUse:='Save and use';
    Lang.Edit:='Edit';
    Lang.Confirm:='Confirm';

    Lang.CurrentDatabase:='Current database:';
    Lang.CurrentLanguage:='Current language';
    Lang.SelectLanguageFile:='Select translation file';
    Lang.CreateLanguageFile:='Create translation file';

    Lang.NoDatabaseSelected:='No database selected.';
    Lang.TheSelectedDatabaseIsNotValid:='The selected database is not valid.';
    Lang.ThereIsAlreadyARecordWithThatName:='There is already a record with that name.';


    Lang.Minerals:='Minerals';
    Lang.AddMineral:='Add mineral';
    Lang.RemoveMineral:='Remove mineral';
    Lang.CreateMineralDatabase:='Create database';
    Lang.SelectMineralDatabase:='Select database';

    Lang.Add:='Add';
    Lang.Remove:='Remove';
    Lang.RemoveAll:='Remove all';

    Lang.Order:='Order';
    Lang.Alphabetical:='Alphabetical';//ou seria alphabetic ????
    Lang.Hardness:='Hardness';
    Lang.Density:='Density';

    Lang.Print:='Print';
    Lang.ShowFilter:='Show/hide filter';
    Lang.ShowImages:='Show/hide images';
    Lang.Bibliography:='Bibliography';
    Lang.FontSize:='Font size ';

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

    Lang.Specie:='Specie';

    Lang.Volume:='Volume';


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

    Lang.Configuration:='Configurations';

    Lang.SelectRecordToExclude:='Selecione um registro para excluir';
    Result:=True;
  end;
end;

end.

