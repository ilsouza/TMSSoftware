program qualiBase;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  FLogin in 'src\FLogin.pas' {frmLogin: TWebForm} {*.html},
  FMain in 'src\FMain.pas' {frmMain: TWebForm} {*.html},
  FUsers in 'src\FUsers.pas' {frmUsers: TWebForm} {*.html},
  FDashBoard in 'src\FDashBoard.pas' {frmDashBoard: TWebForm} {*.html},
  FAMenuPrincipal in 'src\frames\FAMenuPrincipal.pas' {fraMenuPrincipal: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmDashBoard, frmDashBoard);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
