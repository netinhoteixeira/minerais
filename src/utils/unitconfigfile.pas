unit unitconfigfile;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, INIFIles, unitlanguage;

type PanelsType = (SimpleFilter, PanelImages);

procedure ConfigSetDatabase(Filename:String);
procedure ConfigSetLanguage(Which: WhichLanguage);
function ConfigGetDatabase: String;
function ConfigGetLanguage: WhichLanguage;
procedure SetPanelVisibility(Panel: PanelsType; Visible:Boolean);
function IsPanelVisible(Panel: PanelsType):Boolean;
//to do: dimensoes da janela, se maximizado, etc
var Config:TINIFile;

implementation
uses udatamodule;

procedure ConfigSetDatabase(Filename: String);
begin
  Config := TIniFile.Create(Dados.AppPath + 'config.ini');
  config.WriteString('Database', 'Path', FileName);
  Config.Free;
end;

procedure ConfigSetLanguage(Which: WhichLanguage);
begin
  Config := TIniFile.Create(Dados.AppPath + 'config.ini');
  if Which = English then
  begin
    Config.WriteString('Configurations', 'Language', 'English');
  end
  else
  begin
    config.WriteString('Configurations', 'Language', 'Portuguese')
  end;
  Config.Free;
end;

function ConfigGetDatabase: String;
var aux:String;
begin
  Config := TIniFile.Create(Dados.AppPath+'config.ini');
  Aux:= Config.ReadString('Database', 'Path', EmptyStr);
  if Aux <> EmptyStr then
  begin
    if Dados.ValidateDatabase(Aux) then
    begin
      result:=Aux;
    end
    else Aux:=EmptyStr;
  end;
  Config.Free;
  Result:=Aux;
end;

function ConfigGetLanguage: WhichLanguage;
begin
  Config := TIniFile.Create(Dados.AppPath + 'config.ini');
  if Config.ReadString('Configurations', 'Language','English') = 'English' then
  begin
    Result:=English;
  end
  else
  if Config.ReadString('Configurations', 'Language','English') = 'Portuguese' then
  begin
    Result:=Portuguese;
  end;
  Config.Free;
end;

procedure SetPanelVisibility(Panel: PanelsType; Visible: Boolean);
begin
  Config:=TIniFile.Create(Dados.AppPath+'config.ini');
  case Panel of
    SimpleFilter:begin
      Config.WriteBool('Panels', 'PanelSimpleFilter', Visible);
    end;
    PanelImages:begin
      Config.WriteBool('Panels', 'PanelImages', Visible);
    end;
  end;
  Config.Free;
end;

function IsPanelVisible(Panel: PanelsType): Boolean;
var Aux: Boolean;
begin
  Config:=TIniFile.Create(Dados.AppPath+'config.ini');
  case Panel of
    SimpleFilter: begin
      Aux:= Config.ReadBool('Panels', 'PanelSimpleFilter', False);
    end;
    PanelImages:begin
      Aux:= Config.ReadBool('Panels', 'PanelImages', True);
    end;
  end;
  Config.Free;
  Result:= Aux;
end;

end.

