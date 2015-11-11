unit unitframeimages;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, udatamodule,
  unitblobfields;

type

  { TFrameImages }

  TFrameImages = class(TFrame)
    PanelImages: TPanel;
    ScrollBoxImages: TScrollBox;
  private
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    { private declarations }
  public
    SelectedImage:Char;
    procedure RefreshImages(MineralName:String);
    { public declarations }
  end;

  PropertyImages = record
    ToCreate: boolean;
    Created: boolean;
  end;

  const
  Lista_Formatos: string = 'All Files| *.jpg; *.jpeg;';
  ImagesLeft: integer = 6;
  Image1Top: integer = 8;
  SeparadorImagens: integer = 140;
  ImagesWidth: integer = 140;
  ImagesHeight: integer = 120;
  MineralogyName:String = ''; //to do: colocar funcao que devolve o mineralogyname

var
  Image1, Image2, Image3, Image4, Image5, Image6, Image7: TImage;
  Image: array[1..7] of PropertyImages;

implementation
uses unitfichaespecie, unitframelist, unitframesimplefilter;

{$R *.lfm}

{ TFrameImages }

procedure TFrameImages.Image1Click(Sender: TObject);
begin
  SelectedImage:='1';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic :=
    Image1.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.Image2Click(Sender: TObject);
begin
  SelectedImage := '2';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic :=
    Image2.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.Image3Click(Sender: TObject);
begin
  SelectedImage := '3';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image3.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.Image4Click(Sender: TObject);
begin
  SelectedImage := '4';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image4.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.Image5Click(Sender: TObject);
begin
  SelectedImage := '5';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image5.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.Image6Click(Sender: TObject);
begin
  SelectedImage := '6';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image6.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.Image7Click(Sender: TObject);
begin
  SelectedImage := '7';
  FormFichaEspecie.FormFrameFicha.ImagemAmpliada.Picture.Graphic := Image7.Picture.Graphic;
  FormFichaEspecie.FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

procedure TFrameImages.RefreshImages(MineralName: String);
var
  MS: TMemoryStream;
  I, ImagesNumber: integer;
begin
    ImagesNumber := -1;
    ScrollBoxImages.UpdateScrollbars;
    if (MineralName <> EmptyStr) then
    begin
      Dados.TableImages := Dados.DatabaseMinerals.GetTable(
        'SELECT imagem1, ' +
        'imagem2, imagem3, imagem4, imagem5, imagem6, imagem7 FROM '+Dados.Table5+
        ' WHERE nome = "' + MineralName + '" ;');
      for I := 1 to 7 do
      begin
        if Dados.TableImages.RowCount > 0 then
        begin
          MS := Dados.TableImages.FieldAsBlob(
            Dados.TableImages.FieldIndex['imagem' + IntToStr(I)]);
          if MS <> nil then
          begin
            Image[I].ToCreate := True;
          end
          else
          begin
            Image[I].ToCreate := False;
          end;
        end
        else
        begin
          Image[I].ToCreate := False;
        end;
      end;
      if Image[1].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[1].Created then
        begin
          Image1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
            MineralName, EmptyStr)
        end
        else
        begin
          Image1 := TImage.Create(nil);
          with Image1 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top;
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image1Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem1',
              MineralName, EmptyStr);
            Image[1].Created := True;
          end;
        end;
      end
      else
      if Image[1].Created then
      begin
        Image1.Picture.Clear;
        Image1.Destroy;
        Image[1].Created := False;
      end;

      if Image[2].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[2].Created then
        begin
          Image2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
            MineralName, EmptyStr)
        end
        else
        begin
          Image2 := TImage.Create(nil);
          with Image2 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image2Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem2',
              MineralName, EmptyStr);
            Image[2].Created := True;
          end;
        end;
      end
      else
      if Image[2].Created then
      begin
        Image2.Picture.Clear;
        Image2.Destroy;
        Image[2].Created := False;
      end;

      if Image[3].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[3].Created then
          Image3.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
            MineralName, EmptyStr)
        else
        begin
          Image3 := TImage.Create(nil);
          with Image3 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image3Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem3',
              MineralName, EmptyStr);
            Image[3].Created := True;
          end;
        end;
      end
      else
      if Image[3].Created then
      begin
        Image3.Picture.Clear;
        Image3.Destroy;
        Image[3].Created := False;
      end;

      if Image[4].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[4].Created then
          Image4.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
            MineralName, EmptyStr)
        else
        begin
          Image4 := TImage.Create(nil);
          with Image4 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image4Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem4',
              MineralName,EmptyStr);
            Image[4].Created := True;
          end;
        end;
      end
      else
      if Image[4].Created then
      begin
        Image4.Picture.Clear;
        Image4.Destroy;
        Image[4].Created := False;
      end;

      if Image[5].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[5].Created then
          Image5.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
            MineralName, EmptyStr)
        else
        begin
          Image5 := TImage.Create(nil);
          with Image5 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image5Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem5',
              MineralName, EmptyStr);
            Image[5].Created := True;
          end;
        end;
      end
      else
      if Image[5].Created then
      begin
        Image5.Picture.Clear;
        Image5.Destroy;
        Image[5].Created := False;
      end;

      if Image[6].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[6].Created then
          Image6.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
            MineralName, EmptyStr)
        else
        begin
          Image6 := TImage.Create(nil);
          with Image6 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image6Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem6',
              MineralName, EmptyStr);
            Image[6].Created := True;
          end;
        end;
      end
      else
      if Image[6].Created then
      begin
        Image6.Picture.Clear;
        Image6.Destroy;
        Image[6].Created := False;
      end;

      if Image[7].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[7].Created then
          Image7.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
            MineralName, EmptyStr)
        else
        begin
          Image7 := TImage.Create(nil);
          with Image7 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image7Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table5, 'imagem7',
              MineralName, EmptyStr);
            Image[7].Created := True;
          end;
        end;
      end
      else
      if Image[7].Created then
      begin
        Image7.Picture.Clear;
        Image7.Destroy;
        Image[7].Created := False;
      end;

    end
    else
    begin
      Dados.TableImages := Dados.DatabaseMinerals.GetTable('SELECT * ' +
        'FROM '+Dados.Table6+' WHERE campo = "' + MineralogyName + '" ;');
      for I := 1 to 7 do
      begin
        if Dados.TableImages.RowCount > 0 then
        begin
          MS := Dados.TableImages.FieldAsBlob(
            Dados.TableImages.FieldIndex['imagem' + IntToStr(I)]);
          if MS <> nil then
          begin
            Image[I].ToCreate := True;
          end
          else
          begin
            Image[I].ToCreate := False;
          end;
        end
        else
        begin
          Image[I].ToCreate := False;
        end;
      end;
      if Image[1].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[1].Created then
          Image1.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem1',
            EmptyStr, MineralogyName)
        else
        begin
          Image1 := TImage.Create(nil);
          with Image1 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top;
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image1Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem1',
              EmptyStr, MineralogyName);
            Image[1].Created := True;
          end;
        end;
      end
      else
      if Image[1].Created then
      begin
        Image1.Picture.Clear;
        Image1.Destroy;
        Image[1].Created := False;
      end;

      if Image[2].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[2].Created then
          Image2.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem2',
            EmptyStr, MineralogyName)
        else
        begin
          Image2 := TImage.Create(nil);
          with Image2 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image2Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem2',
              EmptyStr,MineralogyName);
            Image[2].Created := True;
          end;
        end;
      end
      else
      if Image[2].Created then
      begin
        Image2.Picture.Clear;
        Image2.Destroy;
        Image[2].Created := False;
      end;

      if Image[3].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[3].Created then
          Image3.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem3',
            EmptyStr, MineralogyName)
        else
        begin
          Image3 := TImage.Create(nil);
          with Image3 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image3Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem3',
              EmptyStr, MineralogyName);
            Image[3].Created := True;
          end;
        end;
      end
      else
      if Image[3].Created then
      begin
        Image3.Picture.Clear;
        Image3.Destroy;
        Image[3].Created := False;
      end;

      if Image[4].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[4].Created then
          Image4.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem4',
            EmptyStr, MineralogyName)
        else
        begin
          Image4 := TImage.Create(nil);
          with Image4 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image4Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem4',
              EmptyStr, MineralogyName);
            Image[4].Created := True;
          end;
        end;
      end
      else
      if Image[4].Created then
      begin
        Image4.Picture.Clear;
        Image4.Destroy;
        Image[4].Created := False;
      end;
      if Image[5].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[5].Created then
          Image5.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem5',
            EmptyStr, MineralogyName)
        else
        begin
          Image5 := TImage.Create(nil);
          with Image5 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image5Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem5',
              EmptyStr, MineralogyName);
            Image[5].Created := True;
          end;
        end;
      end
      else
      if Image[5].Created then
      begin
        Image5.Picture.Clear;
        Image5.Destroy;
        Image[5].Created := False;
      end;

      if Image[6].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[6].Created then
          Image6.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem6',
            EmptyStr, MineralogyName)
        else
        begin
          Image6 := TImage.Create(nil);
          with Image6 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image6Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem6',
              EmptyStr, MineralogyName);
            Image[6].Created := True;
          end;
        end;
      end
      else
      if Image[6].Created then
      begin
        Image6.Picture.Clear;
        Image6.Destroy;
        Image[6].Created := False;
      end;

      if Image[7].ToCreate then
      begin
        Inc(ImagesNumber);
        if Image[7].Created then
          Image7.Picture.Graphic :=
            SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem7',
            EmptyStr, MineralogyName)
        else
        begin
          Image7 := TImage.Create(nil);
          with Image7 do
          begin
            Parent := ScrollBoxImages;
            Left := ImagesLeft;
            Top := Image1Top + (ImagesNumber * SeparadorImagens);
            Width := ImagesWidth;
            Height := ImagesHeight;
            Proportional := True;
            Center := True;
            //AntialiasingMode := amOn;
            OnClick := @Image7Click;
            Picture.Graphic :=
              SelectBlobFieldToJPEGImage(Dados.Table6, 'imagem7',
              EmptyStr, MineralogyName);
            Image[7].Created := True;
          end;
        end;
      end
      else
      if Image[7].Created then
      begin
        Image7.Picture.Clear;
        Image7.Destroy;
        Image[7].Created := False;
      end;
    end;
  //FormFrameFicha.RefreshHeaderControl(SelectedImage);
end;

end.

