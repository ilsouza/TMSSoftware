object frmDashBoard: TfrmDashBoard
  Width = 640
  Height = 480
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  ElementPosition = epIgnore
  OnShow = WebFormShow
  object WebLabel1: TWebLabel
    Left = 384
    Top = 72
    Width = 53
    Height = 13
    Caption = 'WebLabel1'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  inline fraMenuPrincipal1: TfraMenuPrincipal
    Left = 142
    Top = 91
    Width = 546
    Height = 450
    TabOrder = 0
    ExplicitLeft = 142
    ExplicitTop = 91
    inherited lblDashBoard: TWebLabel
      OnClick = fraMenuPrincipal1lblDashBoardClick
    end
    inherited lblMenu3: TWebLabel
      Width = 38
      Caption = 'Success'
      OnClick = fraMenuPrincipal1lblMenu3Click
      ExplicitWidth = 38
    end
    inherited lblMainMenu: TWebLabel
      OnClick = fraMenuPrincipal1lblMainMenuClick
    end
    inherited lblMenu4: TWebLabel
      Width = 24
      Caption = 'Error'
      OnClick = fraMenuPrincipal1lblMenu4Click
      ExplicitWidth = 24
    end
    inherited mnuUsers: TWebLabel
      OnClick = fraMenuPrincipal1mnuUsersClick
    end
    inherited lblMenu5: TWebLabel
      Width = 29
      Caption = 'Dialog'
      OnClick = fraMenuPrincipal1lblMenu5Click
      ExplicitWidth = 29
    end
    inherited WebElementActionList1: TWebElementActionList
      Left = 304
      Top = 208
    end
  end
end
