unit FAMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WEBLib.Actions,
  Vcl.StdCtrls, WEBLib.StdCtrls, System.SysUtils;

type
  TfraMenuPrincipal = class(TFrame)
    lblDashBoard: TWebLabel;
    lblMenu3: TWebLabel;
    lblMainMenu: TWebLabel;
    WebElementActionList1: TWebElementActionList;
    lblMenu4: TWebLabel;
    mnuUsers: TWebLabel;
    lblMenu5: TWebLabel;
    mnuMenu6: TWebLabel;
    mnuMenu7: TWebLabel;
    procedure WebElementActionList1Execute(Sender: TObject; AAction:
        TElementAction; Element: TJSHTMLElementRecord; Event: TJSEventParameter);
    procedure lblDashBoardClick(Sender: TObject);
    procedure lblMainMenuClick(Sender: TObject);
    procedure lblMenu4Click(Sender: TObject);
    procedure lblMenu5Click(Sender: TObject);
    procedure mnuMenu6Click(Sender: TObject);
    procedure mnuMenu7Click(Sender: TObject);
    procedure mnuUsersClick(Sender: TObject);
  private
    procedure LaunchForm(AInstanceClass: TFormClass);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FDashBoard, FUsers, FMain, SweetAlerts;

procedure TfraMenuPrincipal.LaunchForm(AInstanceClass: TFormClass);
var
  frm: TForm;

  procedure FormCreated(AForm: TObject);
  begin
    (AForm as TForm).Show;
  end;

begin
  if Uppercase(Application.ActiveForm.ClassName) <> Uppercase(AInstanceClass.ClassName) then
  begin
    Application.CreateForm(AInstanceClass, 'body', frm, @FormCreated);
  end;
end;

{$R *.dfm}

procedure TfraMenuPrincipal.WebElementActionList1Execute(Sender: TObject;
    AAction: TElementAction; Element: TJSHTMLElementRecord; Event:
    TJSEventParameter);
begin
  case AAction.Index of
    0 : ShowMessage('action 1');
    1 : ShowMessage('action 2');
    2 : ShowMessage('action 1');
    3 : ShowMessage('search');
  end;
end;

procedure TfraMenuPrincipal.lblDashBoardClick(Sender: TObject);
begin
  LaunchForm(TfrmDashBoard);
end;

procedure TfraMenuPrincipal.lblMainMenuClick(Sender: TObject);
begin
  LaunchForm(TfrmMain);
end;

procedure TfraMenuPrincipal.mnuUsersClick(Sender: TObject);
begin
  LaunchForm(TfrmUsers);
end;

procedure TfraMenuPrincipal.lblMenu4Click(Sender: TObject);
begin
  ShowMessage('Menu4');
end;

procedure TfraMenuPrincipal.lblMenu5Click(Sender: TObject);
begin
  ShowMessage('Menu5');
end;

procedure TfraMenuPrincipal.mnuMenu6Click(Sender: TObject);
begin
  ShowMessage('Menu6');
end;

procedure TfraMenuPrincipal.mnuMenu7Click(Sender: TObject);
begin
  ShowMessage('Menu7');
end;

end.
