program PostoFortes;

uses
  Vcl.Forms,
  unMain in 'unMain.pas' {frmMain},
  UPosto in 'UPosto.pas',
  unReport in 'unReport.pas' {frmReport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
