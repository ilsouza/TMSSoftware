unit FLogin;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.Actions, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TfrmLogin = class(TWebForm)
    WebElementActionList1: TWebElementActionList;
    edtUserName: TWebEdit;
    edtPassword: TWebEdit;
    procedure WebElementActionList1Actions0Execute(Sender: TObject; Element:
        TJSHTMLElementRecord; Event: TJSEventParameter);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses FDashBoard;

procedure TfrmLogin.WebElementActionList1Actions0Execute(Sender: TObject;
    Element: TJSHTMLElementRecord; Event: TJSEventParameter);
begin
  Application.CreateForm(TfrmDashBoard, frmDashBoard);
end;

end.