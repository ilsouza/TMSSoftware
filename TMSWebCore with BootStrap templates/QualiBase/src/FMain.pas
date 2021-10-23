unit FMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.Actions, Vcl.Controls, Vcl.StdCtrls,
  WEBLib.StdCtrls, Vcl.Forms, FAMenuPrincipal, WEBLib.ExtCtrls, WEBLib.Buttons;

type
  TfrmMain = class(TWebForm)
    fraMenuPrincipal1: TfraMenuPrincipal;
    WebLabel1: TWebLabel;
    WebEdit1: TWebEdit;
    WebSpeedButton1: TWebSpeedButton;
    procedure WebFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm: TWebForm;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses FDashBoard, FUsers;

procedure TfrmMain.WebFormShow(Sender: TObject);
var
  el: TJSElement;
begin
  // set sidebar element active style
  el := document.getElementById('sideMainMenu');
  el['class'] := 'active';
end;

end.
