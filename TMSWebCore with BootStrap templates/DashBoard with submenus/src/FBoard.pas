unit FBoard;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCGridCell, VCL.TMSFNCGridOptions, Vcl.Grids, WEBLib.DBCtrls, VCL.TMSFNCCustomComponent, VCL.TMSFNCCustomGrid,
  VCL.TMSFNCGridDatabaseAdapter, VCL.TMSFNCCustomControl, VCL.TMSFNCCustomScrollControl, VCL.TMSFNCGridData, VCL.TMSFNCGrid, Vcl.Controls, WEBLib.Grids;

type
  TForm14 = class(TWebForm)
    WebDBResponsiveGrid1: TWebDBResponsiveGrid;
    TMSFNCGrid1: TTMSFNCGrid;
    TMSFNCGridDatabaseAdapter1: TTMSFNCGridDatabaseAdapter;
    WebDBGrid1: TWebDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

end.