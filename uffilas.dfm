object ffilas: Tffilas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Teoria das Filas'
  ClientHeight = 619
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
    Left = 87
    Top = 64
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chegadas ('#955'):'
  end
  object lbl_a: TLabel
    Left = 197
    Top = 42
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object lbl_b: TLabel
    Left = 279
    Top = 42
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object lbl_c: TLabel
    Left = 361
    Top = 42
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object lbl_servico: TLabel
    Left = 100
    Top = 91
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Servi'#231'o ('#181'):'
  end
  object Label1: TLabel
    Left = 87
    Top = 144
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chegadas ('#955'):'
  end
  object Label2: TLabel
    Left = 197
    Top = 122
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label3: TLabel
    Left = 279
    Top = 122
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label4: TLabel
    Left = 361
    Top = 122
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object Label5: TLabel
    Left = 100
    Top = 171
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Servi'#231'o ('#181'):'
  end
  object Label6: TLabel
    Left = 43
    Top = 216
    Width = 113
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' M'#233'dio de Carros (L):'
  end
  object Label10: TLabel
    Left = 9
    Top = 243
    Width = 147
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tempo M'#233'dio Despendido (W):'
  end
  object Label7: TLabel
    Left = 14
    Top = 270
    Width = 142
    Height = 13
    Alignment = taRightJustify
    Caption = 'Taxa M'#233'dia de Ocupa'#231#227'o (p):'
  end
  object Shape: TShape
    Left = 162
    Top = 199
    Width = 240
    Height = 2
    Pen.Color = clGrayText
  end
  object edt_tempo: TEdit
    Left = 77
    Top = 13
    Width = 76
    Height = 21
    TabOrder = 0
  end
  object edt_ca: TEdit
    Left = 162
    Top = 61
    Width = 76
    Height = 21
    TabOrder = 1
  end
  object edt_cb: TEdit
    Left = 244
    Top = 61
    Width = 76
    Height = 21
    TabOrder = 2
  end
  object edt_cc: TEdit
    Left = 326
    Top = 61
    Width = 76
    Height = 21
    TabOrder = 3
  end
  object edt_sa: TEdit
    Left = 162
    Top = 88
    Width = 76
    Height = 21
    TabOrder = 4
  end
  object edt_sb: TEdit
    Left = 244
    Top = 88
    Width = 76
    Height = 21
    TabOrder = 5
  end
  object edt_sc: TEdit
    Left = 326
    Top = 88
    Width = 76
    Height = 21
    TabOrder = 6
  end
  object stg_filas: TStringGrid
    Left = 8
    Top = 294
    Width = 529
    Height = 195
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 7
  end
  object btn_simular: TButton
    Left = 408
    Top = 249
    Width = 129
    Height = 39
    Caption = 'Simular'
    TabOrder = 8
  end
  object Edit1: TEdit
    Left = 162
    Top = 141
    Width = 76
    Height = 21
    TabOrder = 9
  end
  object Edit2: TEdit
    Left = 244
    Top = 141
    Width = 76
    Height = 21
    TabOrder = 10
  end
  object Edit3: TEdit
    Left = 326
    Top = 141
    Width = 76
    Height = 21
    TabOrder = 11
  end
  object Edit4: TEdit
    Left = 162
    Top = 168
    Width = 76
    Height = 21
    TabOrder = 12
  end
  object Edit5: TEdit
    Left = 244
    Top = 168
    Width = 76
    Height = 21
    TabOrder = 13
  end
  object Edit6: TEdit
    Left = 326
    Top = 168
    Width = 76
    Height = 21
    TabOrder = 14
  end
  object Edit7: TEdit
    Left = 162
    Top = 213
    Width = 76
    Height = 21
    TabOrder = 15
  end
  object Edit8: TEdit
    Left = 244
    Top = 213
    Width = 76
    Height = 21
    TabOrder = 16
  end
  object Edit9: TEdit
    Left = 326
    Top = 213
    Width = 76
    Height = 21
    TabOrder = 17
  end
  object Edit10: TEdit
    Left = 162
    Top = 240
    Width = 76
    Height = 21
    TabOrder = 18
  end
  object Edit11: TEdit
    Left = 244
    Top = 240
    Width = 76
    Height = 21
    TabOrder = 19
  end
  object Edit12: TEdit
    Left = 326
    Top = 240
    Width = 76
    Height = 21
    TabOrder = 20
  end
  object Edit13: TEdit
    Left = 162
    Top = 267
    Width = 76
    Height = 21
    TabOrder = 21
  end
  object Edit14: TEdit
    Left = 244
    Top = 267
    Width = 76
    Height = 21
    TabOrder = 22
  end
  object Edit15: TEdit
    Left = 326
    Top = 267
    Width = 76
    Height = 21
    TabOrder = 23
  end
end
