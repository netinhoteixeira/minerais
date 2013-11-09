unit unitAdicionarDadosrruff;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TFormAddImage }

  TFormAddImage = class(TForm)
    BitBtnFechar: TBitBtn;
    BitBtnEscolher: TBitBtn;
    BitBtnAdicionar: TBitBtn;
    GroupBoxImagemMineral: TGroupBox;
    GroupBoxImagemCristalografia: TGroupBox;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAddImage: TFormAddImage;

implementation

{$R *.lfm}

end.

