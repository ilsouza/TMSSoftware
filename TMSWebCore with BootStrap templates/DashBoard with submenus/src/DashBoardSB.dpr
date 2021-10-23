program DashBoardSB;

uses
  Vcl.Forms,
  WEBLib.Forms,
  FBoard in 'FBoard.pas' {Form14: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
