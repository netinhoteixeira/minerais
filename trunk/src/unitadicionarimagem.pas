unit unitAdicionarImagem;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TFormAddRruffData }

  TFormAddRruffData = class(TForm)
    BitBtnCancelar: TBitBtn;
    BitBtnAplicar: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    LabelDifractionData: TLabel;
    LabelInfraredData: TLabel;
    LabelBroadScanData: TLabel;
    LabelRamanData: TLabel;
    LabelMicroprobeImage: TLabel;
    LabelImageQuimica: TLabel;
    LabelImageAmostra: TLabel;
    LabelRruff_id: TLabel;
    LabelEspecie: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    Panel1: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAddRruffData: TFormAddRruffData;

implementation

{$R *.lfm}

end.

