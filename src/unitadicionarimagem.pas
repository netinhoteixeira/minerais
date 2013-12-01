unit unitAdicionarImagem;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, ActnList;

type

  { TFormAddRruffData }

  TFormAddRruffData = class(TForm)
    ActionDialogDiafractionData: TAction;
    ActionDialogInfraredData: TAction;
    ActionDialogBroadScan: TAction;
    ActionDialogRamanData: TAction;
    ActionDialogMicroprobeImage: TAction;
    ActionDialogImageQuimica: TAction;
    ActionDialogImageAmostra: TAction;
    ActionAplicar: TAction;
    ActionButtonDifraction: TAction;
    ActionButtonIfrarred: TAction;
    ActionButtonBroadScan: TAction;
    ActionButtonRaman: TAction;
    ActionButtonMicrossonda: TAction;
    ActionButtonImageQuimica: TAction;
    ActionButtonImage: TAction;
    ActionList1: TActionList;
    BitBtnFechar: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAplicar: TBitBtn;
    LabelDifractionData: TLabel;
    LabelInfraredData: TLabel;
    LabelBroadScanData: TLabel;
    LabelRamanData: TLabel;
    LabelMicroprobeImage: TLabel;
    LabelImageQuimica: TLabel;
    LabelImageAmostra: TLabel;
    LabelEspecie: TLabel;
    LabelRruff_id: TLabel;
    MemoEspecie: TMemo;
    MemoRruffDigito: TMemo;
    MemoDifractionData: TMemo;
    MemoDirecaoLaser: TMemo;
    MemoComprimentoOnda: TMemo;
    MemoRruff_id: TMemo;
    MemoImageAmostra: TMemo;
    MemoImageQuimica: TMemo;
    MemoMicroprobeImage: TMemo;
    MemoRamanData: TMemo;
    MemoBroadScanData: TMemo;
    MemoInfraredData: TMemo;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    procedure ActionDialogBroadScanExecute(Sender: TObject);
    procedure ActionDialogDiafractionDataExecute(Sender: TObject);
    procedure ActionDialogInfraredDataExecute(Sender: TObject);
    procedure ActionDialogMicroprobeImageExecute(Sender: TObject);
    procedure ActionAplicarExecute(Sender: TObject);
    procedure ActionButtonImageExecute(Sender: TObject);
    procedure ActionDialogImageAmostraExecute(Sender: TObject);
    procedure ActionDialogImageQuimicaExecute(Sender: TObject);
    procedure ActionDialogRamanDataExecute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAddRruffData: TFormAddRruffData;

implementation

uses udatamodule;

{$R *.lfm}

{ TFormAddRruffData }

procedure TFormAddRruffData.ActionButtonImageExecute(Sender: TObject);
begin
  OpenDialog1.FileName:='';
  if OpenDialog1.Execute then
  begin
    MemoImageAmostra.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionDialogImageAmostraExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoImageAmostra.Text:= Opendialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionDialogImageQuimicaExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoImageQuimica.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionDialogRamanDataExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoRamanData.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionAplicarExecute(Sender: TObject);
var Cancel:Boolean;

  procedure Especie;
  begin
//    colocar comprimento de onda e direcao do laser
    if MemoEspecie.Text <> EmptyStr then
    begin
      Dados.sldb.ExecSQL('UPDATE rruff SET especie="'+
        MemoEspecie.Text+'"  WHERE rruff_id ="'+MemoRruff_id.Text+'" ;');
     { Dados.sldb.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
        'direcao) VALUES ("'+MemoEspecie.Text+'","'+MemoRruff_id.Text+
          '","'+MemoDirecaoLaser.Text+'"); ');
     Dados.sldb.ExecSQL('INSERT INTO varredura (especie, '+
        'rruff_id, comprimento_onda) VALUES ("'+MemoEspecie.Text+'","'+
          MemoRruff_id.Text+'","'+MemoComprimentoOnda.Text+'"); ');
      Dados.sldb.ExecSQl('UPDATE infravermelho SET especie="'+
        MemoEspecie.Text+'"  WHERE rruff_id ="'+MemoRruff_id.Text+'" ;');
      Dados.sldb.ExecSQL('UPDATE difracao SET especie="'+
        MemoEspecie.Text+'"  WHERE rruff_id ="'+MemoRruff_id.Text+'" ;');    }
    end
    else
    begin

    end;
  end;

  procedure ImageAmostra;
  var FS:TFileStream;
  begin
    if MemoImageAmostra.Text <> EmptyStr then
    begin
      if FileExists(MemoImageAmostra.Text) then
      begin
        Try
          FS := TFileStream.Create(MemoImageAmostra.Text, fmOpenRead);
          if MemoEspecie.Text <> EmptyStr then
          begin
            Dados.sldb.UpdateBlob('UPDATE rruff_id SET '+
              'imagem_amostra= ? WHERE especie="'+
                MemoEspecie.Text+'" AND rruff_id="'+MemoRruff_id.Text+
                  '" AND digito="'+MemoRruffDigito.Text+'" ;)', FS);
          end
          else
          begin
            Dados.sldb.UpdateBlob('UPDATE rruff_id SET '+
              'imagem_amostra= ? WHERE rruff_id="'+MemoRruff_id.Text+
                  '" AND digito="'+MemoRruffDigito.Text+'" ;)', FS);
          end;
        finally
          FS.Free;
        end;
      end
      else
      begin
        ShowMessage('O arquivo de imagem da amostra é inválido.');
        MemoImageAmostra.Clear;
      end;
    end
    else
    begin

    end;
  end;

  procedure ImageQuimica;
  var FS:TFileStream;
  begin
    if MemoImageQuimica.Text <> EmptyStr then
    begin
      if FileExists(MemoImageQuimica.Text) then
      begin
      Try
        FS:=TFileStream.Create(MemoImageQuimica.Text, fmOpenRead);
        if MemoEspecie.Text <> EmptyStr then
        begin
          Dados.sldb.UpdateBlob('UPDATE rruff SET imagem_quimica = ? WHERE '+
            'especie="'+MemoEspecie.Text+'" AND rruff_id="'+MemoRruff_id.Text+
              '" AND digito="'+MemoRruffDigito.Text+'" ;', FS);
        end
        else
        begin
          Dados.sldb.UpdateBlob('UPDATE rruff SET imagem_quimica = ? WHERE '+
            'rruff_id="'+MemoRruff_id.Text+'" AND digito="'+
              MemoRruffDigito.Text+'" ;', FS);
        end;
        finally
          FS.Free;
        end;
      end
      else
      begin
        ShowMessage('Arquivo de imagem (Química) inválido.');
        MemoImageQuimica.Clear;
      end;
    end
    else
    begin

    end;
  end;

  procedure MicroprobeImage;
  var FS:TFileStream;
  begin
    if MemoMicroprobeImage.Text <> EmptyStr then
    begin
      if FileExists(MemoMicroprobeImage.Text) then
      begin
        Try
          FS:=TFileStream.Create(MemoMicroprobeImage.Text, fmOpenRead);
          if MemoEspecie.Text <> EmptyStr then
          begin
            Dados.sldb.UpdateBlob('UPDATE rruff SET imagem_quimica = ? WHERE '+
              'rruff_id="'+MemoRruff_id.text+'" AND especie ="'+
                MemoEspecie.Text+'" AND digito="'+MemoRruffDigito.Text+
                  '" ;', FS);
          end
          else
          begin
            Dados.sldb.UpdateBlob('UPDATE rruff SET imagem_quimica = ? WHERE '+
              'rruff_id="'+MemoRruff_id.Text+'" AND digito="'+
                MemoRruffDigito.Text+'" ;', FS);
          end;
        finally
          FS.Free;
        end;
      end
      else
      begin
        ShowMessage('O caminho do arquivo de imagem da microssonda é inválido.');
        MemoMicroprobeImage.Clear;
      end;
    end
    else
    begin

    end;
  end;

  procedure RamanData;
  var FS:TFileStream;
  begin
    if MemoRamanData.Text <> EmptyStr then
    begin
      if FileExists(MemoRamanData.Text) then
      begin
        Try
          FS:=TFileStream.Create(MemoRamanData.Text, fmOpenRead);
          if MemoEspecie.Text <> EmptyStr then
          begin
            Dados.sldb.UpdateBlob( 'UPDATE raman SET arquivo_raman = ? '+
              'WHERE especie="'+MemoEspecie.Text+'" AND rruff_id="'+
                MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+
                  '";', FS);
          end
          else
          begin
            Dados.sldb.UpdateBlob( 'UPDATE raman SET arquivo_raman = ? '+
              'WHERE rruff_id="'+MemoRruff_id.Text+'" AND digito="'+
                MemoRruffDigito.Text+'" ;', FS);
          end;
        finally
          FS.Free;
        end;
      end
      else
      begin
        ShowMessage('O caminho do arquivo de espectroscopia é inválido.');
        MemoRamanData.Clear;
      end;
    end
    else
    begin

    end;
  end;

  procedure BroadScan;
  var FS:TFileStream;
  begin
    if MemoBroadScanData.Text <> EmptyStr then
    begin
      if FileExists(MemoBroadScanData.Text) Then
      begin
        Try
          FS:=TFileStream.Create(MemoBroadScanData.Text, fmOpenRead);
          if MemoEspecie.Text <> EmptyStr then
          begin
            Dados.sldb.UpdateBlob('UPDATE varredura SET arquivo_varredura = ? '+
              'WHERE especie="'+MemoEspecie.Text+'" AND rruff_id="'+
                MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+'" ;',
                  FS);
          end
          else
          begin
            Dados.sldb.UpdateBlob('UPDATE varredura SET arquivo_varredura = ? '+
              'WHERE rruff_id="'+MemoRruff_id.Text+'" AND digito="'+
                MemoRruffDigito.Text+'" ;', FS);
          end;
        finally
          FS.Free;
        end;
      end
      else
      begin
        ShowMessage('O caminho do arquivo de espectroscopia é inválido.');
        MemoBroadScanData.Clear;
      end;
    end
    else
    begin

    end;
  end;

  procedure InfraredData;
  begin
    if MemoInfraredData.Text <> EmptyStr then
    begin
      if FileExists(MemoInfraredData.Text) then
      begin
        Try
          FS:=TFileStream.Create(MemoInfraredData.Text, fmOpenRead);
          if MemoEspecie.Text <> EmptyStr then
          begin
            Dados.sldb.UpdateBlob('UPDATE infravermelho SET '+
              'arquivo_infravermelho= ? WHERE especie="'+MemoEspecie.Text+
                '"  AND rruff_id="'+MemoRruff_id.Text+'" and digito="'+
                  MemoRruffDigito.Text +'" ; ', FS);
          end
          else
          begin
            Dados.sldb.UpdateBlob('UPDATE infravermelho SET '+
              ' arquivo_infravermelho= ? WHERE rruff_id="'+MemoRruff_id.Text
                +'" AND digito="'+MemoRruffDigito.Text +'" ; ', FS);
          end;
        finally
          FS.Free;
        end;
      end
      else
      begin
        ShowMessage('O caminho do arquivo de varredura é inválido.');
        MemoInfraredData.Clear;
      end;
    end
    else
    begin

    end;
  end;

  procedure DifractionData;
  begin
    if MemoDifractionData.Text <> EmptyStr then
    begin
      if FileExists(MemoDifractionData.Text) then
      begin

      end
      else
      begin
        ShowMessage('o caminho do arquivo de difração é inválido.');
        MemoDifractionData.Clear;
      end;
    end;
  end;

begin
  if MemoRruff_id.Text <> EmptyStr then
  begin
    if MemoRruffDigito.Text <> EmptyStr then
    begin
      Dados.sltb:=Dados.sldb.GetTable('SELECT rruff_id FROM rruff WHERE rruff_id = "'+
          MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+'" ; '+
            'SELECT rruff_id FROM raman WHERE rruff_id = "'+
            MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+'" ;'+
            'SELECT rruff_id FROM varredura WHERE rruff_id = "'+
            MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+'" ;'+
            'SELECT rruff_id FROM infravermelho WHERE rruff_id = "'+
            MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+'" ;'+
            'SELECT rruff_id FROM difracao WHERE rruff_id = "'+
            MemoRruff_id.Text+'" AND digito="'+MemoRruffDigito.Text+'" ;');
      if Dados.sltb.RowCount = 0  then
      begin
        Dados.sldb.ExecSQL('INSERT INTO rruff (especie, rruff_id, digito) '+
          'VALUES ("'+MemoEspecie.Text+'", "'+MemoRruff_id.Text+
            '", "'+MemoRruffDigito.Text+'") ; ');

        if MemoRamanData.Text <> EmptyStr then
          Dados.sldb.ExecSQL('INSERT INTO raman (especie, rruff_id, digito, '+
            'direcao)  VALUES ("'+MemoEspecie.Text+'", "'+MemoRruff_id.Text+
              '", "'+MemoRruffDigito.Text+'", "'+MemoDirecaoLaser.Text+'") ; ');

        if MemoBroadScanData.Text <> EmptyStr  then
          Dados.sldb.ExecSQL('INSERT INTO varredura (especie, rruff_id, digito,'
            +' comprimento_onda) VALUES ("'+MemoEspecie.Text+'","'+
              MemoRruff_id.Text+'","'+MemoRruffDigito.Text+'","'+
                MemoComprimentoOnda.Text+'") ;');

        if MemoInfraredData.Text <> EmptyStr then
          Dados.sldb.ExecSQL('INSERT INTO infravermelho (especie, rruff_id, '+
            'digito) VALUES ("'+MemoEspecie.Text+'", "'+MemoRruff_id.Text+
              '", "'+MemoRruffDigito.Text+'") ;');

        if MemoDifractionData.Text <> EmptyStr then
          Dados.sldb.ExecSQL('INSERT INTO difracao (especie, rruff_id,'+
            'digito) VALUES ("'+MemoEspecie.Text+'","'+MemoRruff_id.Text+
              '","'+MemoRruffDigito.Text+'") ;');
      end;
      Cancel:=False;
      While Not Cancel do
      begin
        Especie;
        ImageAmostra;
        ImageQuimica;
        MicroprobeImage;
        if MemoRamanData.Text <> EmptyStr then
        begin
          if MemoDirecaoLaser.Text <> EmptyStr then
            RamanData
          else
            ShowMessage('O valor da direção do laser está vazio. '+#10#13+
              'Dados da Espectropia Raman não serão salvos.');
        end;
        if MemoBroadScanData.Text <> EmptyStr then
        begin
          if MemoComprimentoOnda.Text <> EmptyStr then
            BroadScan
          else
            ShowMessage('O valor do Comprimento de Onda está vazio. '+#10#13+
              'Dados da Varredura não serão salvos.');
        end;
        InfraredData;
        DifractionData;
        Cancel:=True;
      end;
    end
    else
    begin
      ShowMessage('A amostra precisa ter uma identificação.');
    end;
  end
  else
  begin
    ShowMessage('A amostra precisa ter uma identificação.');
  end;
end;

procedure TFormAddRruffData.ActionDialogMicroprobeImageExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoMicroprobeImage.Text:= OpenDialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionDialogBroadScanExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoBroadScanData.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionDialogDiafractionDataExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoDifractionData.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormAddRruffData.ActionDialogInfraredDataExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MemoInfraredData.Text:=OpenDialog1.FileName;
  end;
end;

end.

