object fraMenuPrincipal: TfraMenuPrincipal
  Left = 0
  Top = 0
  Width = 546
  Height = 450
  TabOrder = 0
  object lblDashBoard: TWebLabel
    Left = 90
    Top = 80
    Width = 52
    Height = 13
    Caption = 'DashBoard'
    Color = clBtnFace
    ElementID = 'mnuDashBoard'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lblDashBoardClick
  end
  object lblMenu3: TWebLabel
    Left = 94
    Top = 146
    Width = 32
    Height = 13
    Caption = 'Menu3'
    Color = clBtnFace
    ElementID = 'mnuMenu3'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblMainMenu: TWebLabel
    Left = 94
    Top = 111
    Width = 48
    Height = 13
    Caption = 'MainMenu'
    Color = clBtnFace
    ElementID = 'mnuMainMenu'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lblMainMenuClick
  end
  object lblMenu4: TWebLabel
    Left = 94
    Top = 176
    Width = 32
    Height = 13
    Caption = 'Menu4'
    Color = clBtnFace
    ElementID = 'mnuMenu4'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lblMenu4Click
  end
  object mnuUsers: TWebLabel
    Left = 94
    Top = 242
    Width = 27
    Height = 13
    Caption = 'Users'
    Color = clBtnFace
    ElementID = 'mnuUsers'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = mnuUsersClick
  end
  object lblMenu5: TWebLabel
    Left = 94
    Top = 207
    Width = 32
    Height = 13
    Caption = 'Menu5'
    Color = clBtnFace
    ElementID = 'mnuMenu5'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lblMenu5Click
  end
  object mnuMenu6: TWebLabel
    Left = 94
    Top = 274
    Width = 32
    Height = 13
    Caption = 'Menu6'
    Color = clBtnFace
    ElementID = 'mnuMenu6'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = mnuMenu6Click
  end
  object mnuMenu7: TWebLabel
    Left = 94
    Top = 306
    Width = 32
    Height = 13
    Caption = 'Menu7'
    Color = clBtnFace
    ElementID = 'mnuMenu7'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = mnuMenu7Click
  end
  object WebElementActionList1: TWebElementActionList
    Actions = <
      item
        ID = 'action1'
        Name = 'Action0'
      end
      item
        ID = 'action2'
        Name = 'Action1'
      end
      item
        ID = 'action3'
        Name = 'Action2'
      end
      item
        ID = 'search'
        Name = 'Action3'
      end>
    OnExecute = WebElementActionList1Execute
    Left = 392
    Top = 64
  end
end
