unit uffilas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls, Math;

type
  Tffilas = class(TForm)
    lbl_tempo: TLabel;
    edt_tempo: TEdit;
    lbl_chegadas: TLabel;
    edt_ca: TEdit;
    lbl_a: TLabel;
    edt_cb: TEdit;
    lbl_b: TLabel;
    edt_cc: TEdit;
    lbl_c: TLabel;
    lbl_servico: TLabel;
    edt_sa: TEdit;
    edt_sb: TEdit;
    edt_sc: TEdit;
    stg_filas: TStringGrid;
    btn_simular: TButton;
    Label1: TLabel;
    edt_car: TEdit;
    Label2: TLabel;
    edt_cbr: TEdit;
    Label3: TLabel;
    edt_ccr: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edt_sar: TEdit;
    edt_sbr: TEdit;
    edt_scr: TEdit;
    Label6: TLabel;
    edt_la: TEdit;
    edt_lb: TEdit;
    edt_lc: TEdit;
    Label10: TLabel;
    edt_wa: TEdit;
    edt_wb: TEdit;
    edt_wc: TEdit;
    Label7: TLabel;
    edt_pa: TEdit;
    edt_pb: TEdit;
    edt_pc: TEdit;
    procedure btn_simularClick(Sender: TObject);
    procedure edt_caKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffilas: Tffilas;

implementation

{$R *.dfm}

procedure Tffilas.btn_simularClick(Sender: TObject);
var
  delta:double;
  aValor: array[0..21] of double;
  i: Integer;

  procedure Validar_Campos_Em_Branco;
  var
    i:integer;
  begin
    for i:=1 to 6 do
    begin
      if aValor[i]=0 then
      begin
        ShowMessage('Existem campos em banco ou zerados, favor verificar.');
        Abort;
      end;
    end;
  end;

  procedure Carregar_Valores;
  var
    i,j:integer;
  begin
    j:=0;
    for i:=0 to self.ComponentCount-1 do
    begin
      if (self.Components[i] is TEdit) then
      begin
        aValor[j]:=StrToFloatDef(TEdit(self.Components[i]).Text,0);
        Inc(j);
      end;
    end;
  end;

  procedure Enviar_Valores;
  var
    i,j:integer;
    sValor:string;
  begin
    j:=0;
    for i:=0 to self.ComponentCount-1 do
    begin
      if (self.Components[i] is TEdit) then
      begin
        if j>0 then
          sValor:=FormatFloat('#,##0.00',aValor[j])
        else
          sValor:=FloatToStr(aValor[j]);
        if j>=19 then
          sValor:=sValor+'%';
        TEdit(self.Components[i]).Text:=sValor;
        Inc(j);
      end;
    end;
  end;

  procedure Preecher_Tabela;
  var
    i, j: Integer;
    dValor:double;
  begin
    for i:=1 to stg_filas.RowCount do
    begin
      for j:=2 to stg_filas.ColCount-1 do
      begin
        dValor:=(1-(aValor[j+17]/100))*power((aValor[j+17]/100),i-1);
        stg_filas.Cells[j,i]:=FormatFloat('0.0000',dValor);
      end;
    end;
  end;
begin
  // Carregar valores
  Carregar_Valores;
  // Validar campos em branco
  Validar_Campos_Em_Branco;

  // ============ CALCULO ============
  // Recalculo Cenário
  for i:=7 to 12 do
    aValor[i]:=aValor[0]/aValor[i-6];
  // Número Médio
  for i:=13 to 15 do
  begin
    delta:=(aValor[i-3]-aValor[i-6]);
    aValor[i]:=aValor[i-6]/delta;
  end;
  // Tempo Médio
  for i:=16 to 18 do
  begin
    delta:=(aValor[i-6]-aValor[i-9]);
    aValor[i]:=1/delta;
  end;
  // Taxa Média
  for i:=19 to 21 do
  begin
    aValor[i]:=(aValor[i-12]/aValor[i-9])*100;
  end;
  // Enviar Valores
  Enviar_Valores;

  // Preecher Tabela
  Preecher_Tabela;
end;

procedure Tffilas.edt_caKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',',',#8]) then key :=#0;
end;

procedure Tffilas.FormActivate(Sender: TObject);
var
  i,Num_Linhas,Num_Colunas:integer;
begin
  Num_Linhas  := 6;
  Num_Colunas := 5;

  stg_filas.RowCount := Num_Linhas;
  stg_filas.ColCount := Num_Colunas;

  // Cabeçalho
  stg_filas.Cells[0,0]:='x';
  stg_filas.Cells[1,0]:='P(x)';
  stg_filas.Cells[2,0]:='A';
  stg_filas.Cells[3,0]:='B';
  stg_filas.Cells[4,0]:='C';

  // insere o numero das linhas
  for i:=0 to Num_Linhas do
    stg_filas.Cells[0, i+1] := IntToStr(i);
  for i:=0 to Num_Linhas do
    stg_filas.Cells[1, i+1] := 'P('+IntToStr(i)+')';
end;

end.
