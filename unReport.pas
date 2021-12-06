unit unReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport;

type
  TfrmReport = class(TForm)
    RLReportPosto: TRLReport;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    FDConn: TFDConnection;
    FDQryReport: TFDQuery;
    DSReport: TDataSource;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel11: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel12: TRLLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}

procedure TfrmReport.FormCreate(Sender: TObject);
begin
  FDConn.Params.Database := ExtractFilePath(ParamStr(0)) + '\posto.db';;
end;

end.
