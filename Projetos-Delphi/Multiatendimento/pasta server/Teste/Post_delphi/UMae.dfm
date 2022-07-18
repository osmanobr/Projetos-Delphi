object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 271
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LbMensagem: TLabel
    Left = 17
    Top = 131
    Width = 395
    Height = 13
    Caption = 'Mensagem'
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 19
    Height = 13
    Caption = 'URL'
  end
  object Label2: TLabel
    Left = 161
    Top = 48
    Width = 93
    Height = 13
    Caption = 'CELULAR EMPRESA'
  end
  object Label3: TLabel
    Left = 10
    Top = 88
    Width = 33
    Height = 13
    Caption = 'TOKEN'
  end
  object Label4: TLabel
    Left = 18
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Id Empresa'
  end
  object BtnPost: TBitBtn
    Left = 328
    Top = 53
    Width = 123
    Height = 25
    Caption = 'Post'
    TabOrder = 0
    OnClick = BtnPostClick
  end
  object BtnGet: TButton
    Left = 328
    Top = 22
    Width = 123
    Height = 25
    Caption = 'Get'
    TabOrder = 1
    OnClick = BtnGetClick
  end
  object EdtUrl: TEdit
    Left = 16
    Top = 24
    Width = 265
    Height = 21
    TabOrder = 2
    Text = 'http://localhost:8888/teste'
  end
  object EdtCelularEmpresa: TEdit
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '63992893682'
  end
  object EdtToken: TEdit
    Left = 17
    Top = 104
    Width = 138
    Height = 21
    TabOrder = 4
    Text = '123456'
  end
  object EdtEmpresa: TEdit
    Left = 17
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0000'
  end
  object IdHTTP: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 292
    Top = 50
  end
  object RESTResponse1: TRESTResponse
    Left = 282
    Top = 6
  end
end
