unit uffilas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

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
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label7: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Shape: TShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffilas: Tffilas;

implementation

{$R *.dfm}

end.
