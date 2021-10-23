object frmMain: TfrmMain
  Width = 1021
  Height = 687
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  ElementPosition = epIgnore
  FormContainer = 'icons-wrapper'
  OnShow = WebFormShow
  object WebLabel1: TWebLabel
    Left = 80
    Top = 96
    Width = 121
    Height = 17
    Caption = 'WebLabel1'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  inline fraMenuPrincipal1: TfraMenuPrincipal
    Left = 438
    Top = 382
    Width = 546
    Height = 450
    TabOrder = 0
    ExplicitLeft = 438
    ExplicitTop = 382
    inherited WebElementActionList1: TWebElementActionList
      Left = 336
      Top = 224
    end
  end
  object WebEdit1: TWebEdit
    Left = 80
    Top = 112
    Width = 121
    Height = 22
    ChildOrder = 2
    ElementClassName = 'form-control'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    Text = 'WebEdit1'
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object WebSpeedButton1: TWebSpeedButton
    Left = 80
    Top = 140
    Width = 193
    Height = 65
    Caption = 'WebSpeedButton1'
  end
end
