unit unitformimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ActnList;

type

  { TFormImages }

  TFormImages = class(TForm)
    ActionClearImage7: TAction;
    ActionAddImage7: TAction;
    ActionClearImage6: TAction;
    ActionAddImage6: TAction;
    ActionClearImage5: TAction;
    ActionAddImage5: TAction;
    ActionClearImage4: TAction;
    ActionAddImage4: TAction;
    ActionClearImage3: TAction;
    ActionAddImage3: TAction;
    ActionClearImage2: TAction;
    ActionAddImage2: TAction;
    ActionClearImage1: TAction;
    ActionAddImage1: TAction;
    ActionList1: TActionList;
    BitBtnAddImage1: TBitBtn;
    BitBtnClearImage5: TBitBtn;
    BitBtnAddImage6: TBitBtn;
    BitBtnClearImage6: TBitBtn;
    BitBtnAddImage7: TBitBtn;
    BitBtnClearImage7: TBitBtn;
    BitBtnClearImage1: TBitBtn;
    BitBtnAddImage2: TBitBtn;
    BitBtnClearImage2: TBitBtn;
    BitBtnAddImage3: TBitBtn;
    BitBtnClearImage3: TBitBtn;
    BitBtnAddImage4: TBitBtn;
    BitBtnClearImage4: TBitBtn;
    BitBtnAddImage5: TBitBtn;
    GroupBoxGeneralImages: TGroupBox;
    GroupBoxOpticImages: TGroupBox;
    GroupBoxChystImages: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Panel1: TPanel;
    PanelButtons: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormImages: TFormImages;

implementation

{$R *.lfm}

end.

