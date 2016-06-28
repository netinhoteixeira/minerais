unit unitaddimage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ExtDlgs, ActnList, unitblobfields, udatamodule;

type

  { TFormAddImage }

  TFormAddImage = class(TForm)
    ActionFormClose: TAction;
    ActionSaveImage: TAction;
    ActionOpenDialog: TAction;
    ActionList1: TActionList;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtnClear: TBitBtn;
    BitBtnOpen: TBitBtn;
    ComboBox1: TComboBox;
    ComboBoxMineralsNames: TComboBox;
    Image1: TImage;
    LabelName: TLabel;
    LabelCategory: TLabel;
    LabelDescription: TLabel;
    MemoDescription: TMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure ActionFormCloseExecute(Sender: TObject);
    procedure ActionOpenDialogExecute(Sender: TObject);
    procedure ActionSaveImageExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAddImage: TFormAddImage;
  ImageFileName:String;

implementation

{$R *.lfm}

{ TFormAddImage }

procedure TFormAddImage.ActionOpenDialogExecute(Sender: TObject);
var FS:TFileStream;  pic: TJPEGImage;
begin
  if OpenPictureDialog1.Execute then
    if OpenPictureDialog1.FileName <> EmptyStr then
    begin
      try
      FS:=TFileStream.Create(OpenPictureDialog1.FileName,fmOpenRead);
      pic := TJPEGImage.Create;
      pic.LoadFromStream(FS);
      Image1.Picture.Graphic:=pic;
      ImageFileName:= OpenPictureDialog1.FileName;
      finally
        FS.Free;
      end;
    end;
end;

procedure TFormAddImage.ActionFormCloseExecute(Sender: TObject);
begin
  FormAddImage.Visible:=False;
end;

procedure TFormAddImage.ActionSaveImageExecute(Sender: TObject);
begin
  if ImageFilename <> EmptyStr then
  begin
    if ComboBoxMineralsNames.Text <> EmptyStr then
    begin
      AddBlobField(ImageFileName, ComboboxMineralsNames.Text, Combobox1.Text,
        MemoDescription.Text);
    end
    else
     ShowMessage('');
  end
  else ShowMessage('');
end;

procedure TFormAddImage.FormCreate(Sender: TObject);
begin
  OpenPictureDialog1.Filter:='All Files | *.jpg; *.jpeg;';
end;

procedure TFormAddImage.FormShow(Sender: TObject);
begin
  ComboBoxMineralsNames.Clear;
  ComboBoxMineralsNames.Items:=Dados.ReturnDistinctField(FieldName, Dados.Table1);
end;

end.
