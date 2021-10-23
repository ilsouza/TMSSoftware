unit FDashBoard;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.Actions, Vcl.Controls, Vcl.Forms,
  FAMenuPrincipal, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TfrmDashBoard = class(TWebForm)
    fraMenuPrincipal1: TfraMenuPrincipal;
    WebLabel1: TWebLabel;
    procedure fraMenuPrincipal1lblDashBoardClick(Sender: TObject);
    procedure fraMenuPrincipal1lblMainMenuClick(Sender: TObject);
    procedure fraMenuPrincipal1lblMenu3Click(Sender: TObject);
    procedure fraMenuPrincipal1lblMenu4Click(Sender: TObject);
    procedure fraMenuPrincipal1lblMenu5Click(Sender: TObject);
    procedure fraMenuPrincipal1mnuUsersClick(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDashBoard : TfrmDashBoard;

  function Confirmado : boolean;
  function Cancelado : boolean;

implementation

{$R *.dfm}

uses FMain, FUsers;

procedure TfrmDashBoard.fraMenuPrincipal1lblMenu3Click(Sender: TObject);
begin
  asm
    Swal.fire(
      'Good job!',
      'You clicked the button!',
      'success'
    );
  end;
end;

procedure TfrmDashBoard.fraMenuPrincipal1lblMenu4Click(Sender: TObject);
begin
  asm
    Swal.fire(
      'Oops!',
      'Something went wrong!',
      'error'
    );
  end;
end;

//---------------------------------------------------------------------------------------

procedure TfrmDashBoard.fraMenuPrincipal1lblMenu5Click(Sender: TObject);
var
  sString, strAux : String;
  sOk : String;
begin
  asm
    var ok = 0
    Swal.fire({
      title: 'Are-you-sure?',
      text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
      if (result.isConfirmed) {
        $mod.Confirmado();
      } else {$mod.Cancelado()}
    });

    sOk = ok;
  end;
end;

function Confirmado : boolean;
begin
  asm
    Swal.fire(
      'Good job!',
      'You clicked the button!',
      'success'
    );
  end;

//  frmDashBoard.fraMenuPrincipal1lblMainMenuClick(nil);
  Result := true;
end;

function Cancelado : Boolean;
begin
  asm
    Swal.fire(
      'Oops!',
      'Something went wrong!',
      'error'
    );
  end;

//  frmDashBoard.fraMenuPrincipal1mnuUsersClick(nil);
  Result := False;
end;

procedure TfrmDashBoard.fraMenuPrincipal1lblDashBoardClick(Sender: TObject);
begin
  fraMenuPrincipal1.lblDashBoardClick(Sender);
end;

procedure TfrmDashBoard.fraMenuPrincipal1lblMainMenuClick(Sender: TObject);
begin
  fraMenuPrincipal1.lblMainMenuClick(Sender);
end;

procedure TfrmDashBoard.fraMenuPrincipal1mnuUsersClick(Sender: TObject);
begin
  fraMenuPrincipal1.mnuUsersClick(Sender);
end;

procedure TfrmDashBoard.WebFormShow(Sender: TObject);
var
  el: TJSElement;
begin
  // set sidebar element active style
  el := document.getElementById('sideDashBoard');
  el['class'] := 'active';
end;


end.
