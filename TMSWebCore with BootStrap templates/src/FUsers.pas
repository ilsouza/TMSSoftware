unit FUsers;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.Actions, Vcl.Controls, Vcl.Forms,
  FAMenuPrincipal, WEBLib.ExtCtrls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TfrmUsers = class(TWebForm)
    fraMenuPrincipal1: TfraMenuPrincipal;
    WebEdit1: TWebEdit;
    WebEdit2: TWebEdit;
    WebEdit3: TWebEdit;
    WebEdit4: TWebEdit;
    WebEdit5: TWebEdit;
    WebEdit6: TWebEdit;
    WebEdit7: TWebEdit;
    WebEdit8: TWebEdit;
    WebMemo1: TWebMemo;
    btnUser: TWebButton;
    WebHTMLContainer1: TWebHTMLContainer;
    procedure WebElementActionList1Actions0Execute(Sender: TObject; Element:
        TJSHTMLElementRecord; Event: TJSEventParameter);
    procedure WebElementActionList1Actions1Execute(Sender: TObject; Element:
        TJSHTMLElementRecord; Event: TJSEventParameter);
    procedure WebFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsers: TfrmUsers;

implementation

{$R *.dfm}

uses FMain, FDashBoard;

procedure TfrmUsers.WebElementActionList1Actions0Execute(Sender: TObject;
    Element: TJSHTMLElementRecord; Event: TJSEventParameter);
begin
  Application.CreateForm(TfrmDashBoard, frmDashBoard);
end;

procedure TfrmUsers.WebElementActionList1Actions1Execute(Sender: TObject;
    Element: TJSHTMLElementRecord; Event: TJSEventParameter);
begin
  Application.CreateForm(TfrmMain, frmMain);
end;

procedure TfrmUsers.WebFormShow(Sender: TObject);
var
  el: TJSElement;
begin
  // set sidebar element active style
  el := document.getElementById('sideUsers');
  el['class'] := 'active';
end;

end.
