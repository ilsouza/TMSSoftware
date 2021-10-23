object frmLogin: TfrmLogin
  Width = 640
  Height = 480
  Caption = 'edtPassword'
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  ElementPosition = epIgnore
  object edtUserName: TWebEdit
    Left = 104
    Top = 104
    Width = 121
    Height = 22
    ElementClassName = 'input100'
    ElementID = 'edtEmail'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object edtPassword: TWebEdit
    Left = 104
    Top = 132
    Width = 121
    Height = 22
    ChildOrder = 1
    ElementClassName = 'input100'
    ElementID = 'edtPassword'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object WebElementActionList1: TWebElementActionList
    Actions = <
      item
        ID = 'btnLogin'
        Name = 'Action0'
        OnExecute = WebElementActionList1Actions0Execute
      end>
    Left = 416
    Top = 152
  end
end
