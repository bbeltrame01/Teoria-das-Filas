object ffilas: Tffilas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Teoria das Filas'
  ClientHeight = 537
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_tempo: TLabel
    Left = 8
    Top = 16
    Width = 63
    Height = 13
    Caption = 'Tempo (min):'
  end
  object lbl_chegadas: TLabel
    Left = 86
    Top = 64
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chegadas ('#955'):'
  end
  object lbl_a: TLabel
    Left = 196
    Top = 42
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object lbl_b: TLabel
    Left = 278
    Top = 42
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object lbl_c: TLabel
    Left = 360
    Top = 42
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object lbl_servico: TLabel
    Left = 99
    Top = 91
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Servi'#231'o ('#181'):'
  end
  object Label1: TLabel
    Left = 86
    Top = 184
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chegadas ('#955'):'
  end
  object Label2: TLabel
    Left = 196
    Top = 162
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label3: TLabel
    Left = 278
    Top = 162
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label4: TLabel
    Left = 360
    Top = 162
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object Label5: TLabel
    Left = 99
    Top = 211
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Servi'#231'o ('#181'):'
  end
  object Label6: TLabel
    Left = 42
    Top = 256
    Width = 113
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' M'#233'dio de Carros (L):'
  end
  object Label10: TLabel
    Left = 8
    Top = 283
    Width = 147
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tempo M'#233'dio Despendido (W):'
  end
  object Label7: TLabel
    Left = 13
    Top = 310
    Width = 142
    Height = 13
    Alignment = taRightJustify
    Caption = 'Taxa M'#233'dia de Ocupa'#231#227'o (p):'
  end
  object edt_tempo: TEdit
    Left = 77
    Top = 13
    Width = 76
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object edt_ca: TEdit
    Left = 161
    Top = 61
    Width = 76
    Height = 21
    TabOrder = 1
    OnKeyPress = edt_caKeyPress
  end
  object edt_cb: TEdit
    Left = 243
    Top = 61
    Width = 76
    Height = 21
    TabOrder = 2
    OnKeyPress = edt_caKeyPress
  end
  object edt_cc: TEdit
    Left = 325
    Top = 61
    Width = 76
    Height = 21
    TabOrder = 3
    OnKeyPress = edt_caKeyPress
  end
  object edt_sa: TEdit
    Left = 161
    Top = 88
    Width = 76
    Height = 21
    TabOrder = 4
    OnKeyPress = edt_caKeyPress
  end
  object edt_sb: TEdit
    Left = 243
    Top = 88
    Width = 76
    Height = 21
    TabOrder = 5
    OnKeyPress = edt_caKeyPress
  end
  object edt_sc: TEdit
    Left = 325
    Top = 88
    Width = 76
    Height = 21
    TabOrder = 6
    OnKeyPress = edt_caKeyPress
  end
  object stg_filas: TStringGrid
    Left = 8
    Top = 334
    Width = 545
    Height = 195
    DefaultColWidth = 100
    Enabled = False
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 23
  end
  object btn_simular: TButton
    Left = 161
    Top = 115
    Width = 240
    Height = 39
    Caption = 'Simular'
    TabOrder = 7
    OnClick = btn_simularClick
  end
  object edt_car: TEdit
    Left = 161
    Top = 181
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object edt_cbr: TEdit
    Left = 243
    Top = 181
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object edt_ccr: TEdit
    Left = 325
    Top = 181
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object edt_sar: TEdit
    Left = 161
    Top = 208
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 11
  end
  object edt_sbr: TEdit
    Left = 243
    Top = 208
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 12
  end
  object edt_scr: TEdit
    Left = 325
    Top = 208
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 13
  end
  object edt_la: TEdit
    Left = 161
    Top = 253
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 14
  end
  object edt_lb: TEdit
    Left = 243
    Top = 253
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 15
  end
  object edt_lc: TEdit
    Left = 325
    Top = 253
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 16
  end
  object edt_wa: TEdit
    Left = 161
    Top = 280
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 17
  end
  object edt_wb: TEdit
    Left = 243
    Top = 280
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 18
  end
  object edt_wc: TEdit
    Left = 325
    Top = 280
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 19
  end
  object edt_pa: TEdit
    Left = 161
    Top = 307
    Width = 76
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 20
  end
  object edt_pb: TEdit
    Left = 243
    Top = 307
    Width = 76
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 21
  end
  object edt_pc: TEdit
    Left = 325
    Top = 307
    Width = 76
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 22
  end
end
