unit unitrruff_id;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, DbCtrls, EditBtn, ActnList, ComCtrls;

type

  { TFormAdicionaRruff }

  TFormAdicionaRruff = class(TForm)
    ActionSelecionar: TAction;
    ActionAdicionar: TAction;
    ActionList1: TActionList;
    BitBtn1: TBitBtn;
    BitBtnSelecionar: TBitBtn;
    EditNome: TEdit;
    EditRruff_id: TEdit;
    EditAmostras: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxAdicionarRruff: TGroupBox;
    LabelAmostra: TLabel;
    Label3: TLabel;
    LabelEspecies: TLabel;
    ListBox1: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    procedure ActionAdicionarExecute(Sender: TObject);
    procedure ActionSelecionarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MemoEspecieEditingDone(Sender: TObject);
  private
    { private declarations }
  public
    DirecaoLaser:String;
    ComprimentoOnda:String;
    LocalAmostra: Integer; //usado para adicionar a amostra na tabela correta
    { public declarations }
  end;

var
  FormAdicionaRruff: TFormAdicionaRruff;

implementation
uses udatamodule;

procedure TFormAdicionaRruff.FormCreate(Sender: TObject);
begin

end;

procedure TFormAdicionaRruff.ActionAdicionarExecute(Sender: TObject);
begin
  if EditNome.Text <> EmptyStr then
  begin
    Dados.sltb:= Dados.sldb.GetTable('SELECT nome FROM minerais WHERE nome="'+
      EditNome.Text+'" ;');
    if Dados.sltb.RowCount = 0 then
    begin
      if MessageDlg('Question', 'Deseja adicionar o mineral '+EditNome.Text+
        ' ao banco de dados?', mtConfirmation, [mbYes, mbNo],0) =
          mrYes then
          begin
            Dados.sldb.ExecSQL('INSERT INTO minerais (nome, dureza_min, dureza_max,'+
              ' densidade_min, densidade_max) VALUES ("'+EditNome.Text+
                '", "1.0", "10.0", "0.0","25.0");');
          end;
    end;
  end;
      if EditRruff_id.Text <> EmptyStr then
      begin
        if EditAmostras.Text <> EmptyStr then
        begin
          Case LocalAmostra of
          1:begin
              Dados.sldb.ExecSQL('INSERT INTO rruff (especie, rruff_id,'+
                'digito_quimica) VALUES ("'+EditNome.Text+'","'+EditRruff_id.Text+'", "'
                  +EditAmostras.Text+'");');
            end;
          2:begin
              Dados.sldb.ExecSQL('INSERT INTO raman (especie, rruff_id,'+
                'digito_raman) VALUES ("'+EditNome.Text+'","'+EditRruff_id.Text+'", "'
                  +EditAmostras.Text+'");');
            end;
          3:begin
              Dados.sldb.ExecSQL('INSERT INTO varredura (especie, rruff_id,'+
                'digito_varredura) VALUES ("'+EditNome.Text+'","'+EditRruff_id.Text+'", "'
                  +EditAmostras.Text+'");');
            end;
          4:begin
              Dados.sldb.ExecSQL('INSERT INTO infravermelho (especie, rruff_id,'+
                'digito_infravermelho) VALUES ("'+EditNome.Text+'","'+EditRruff_id.Text+'", "'
                  +EditAmostras.Text+'");');
            end;
          5:begin
              Dados.sldb.ExecSQL('INSERT INTO difracao (especie, rruff_id,'+
                'digito_difracao) VALUES ("'+EditNome.Text+'","'+EditRruff_id.Text+'", "'
                  +EditAmostras.Text+'");');
            end;
          end;
          Listbox1.Items.Append(EditRruff_id.Text+' - '+EditAmostras.Text);
        end;
    end;
end;

procedure TFormAdicionaRruff.ActionSelecionarExecute(Sender: TObject);
begin

end;

procedure TFormAdicionaRruff.FormShow(Sender: TObject);
begin
  case LocalAmostra of
  1:begin
      Statusbar1.Panels.Items[0].Text:='Química';
  end;
  2:begin
    Statusbar1.Panels.Items[0].Text:='Espectro RAMAN';
    Statusbar1.Panels.Items[1].Text:=DirecaoLaser;
  end;
  3:begin
    Statusbar1.Panels.Items[0].Text:='Ampla Varredura com Artefatos Espectrais';
    Statusbar1.Panels.Items[1].Text:=ComprimentoOnda;
  end;
  4:begin
    Statusbar1.Panels.Items[0].Text:='Espectro Infravermelho';
  end;
  5:begin
    Statusbar1.Panels.Items[0].Text:='Difração do Polvilho';
  end;
  end;
end;

procedure TFormAdicionaRruff.MemoEspecieEditingDone(Sender: TObject);
begin

end;

{ TFormAdicionaRruff }

{$R *.lfm}

end.

