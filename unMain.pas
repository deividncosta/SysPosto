unit unMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Samples.Spin, UPosto, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TEditDocumento = class helper for TRadioGroup
   public
      function TipoCombustivel: TCombustivel;
  end;
  TfrmMain = class(TForm)
    edtPosto: TLabeledEdit;
    lblTanque: TLabel;
    spTanque: TSpinEdit;
    rgCombustivel: TRadioGroup;
    lblBomba: TLabel;
    spBomba: TSpinEdit;
    edtValorComb: TLabeledEdit;
    spLitros: TSpinEdit;
    lblLitros: TLabel;
    edtValor: TLabeledEdit;
    edtValorFinal: TLabeledEdit;
    btnSalvar: TButton;
    btnRelatorio: TButton;
    btnLimpar: TButton;
    procedure btnLimparClick(Sender: TObject);
    procedure spLitrosChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
    Posto: TPosto;
    procedure ClearFormFields;
    function ValidFields: Boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses unReport;

{ TEditDocumento }

function TEditDocumento.TipoCombustivel: TCombustivel;
begin
  if ItemIndex = 0 then
    Result := Gasolina
  else
    Result := Diesel;
end;

{ TfrmMain }

{$REGION 'Validação e Limpeza dos Campos'}

procedure TfrmMain.ClearFormFields;
begin
  for var I := 0 to Pred(ComponentCount) do
  begin
    if Components[I].ClassType = TLabeledEdit then
      if ((TLabeledEdit(Components[I]).Name <> 'edtPosto') and (TLabeledEdit(Components[I]).Name <> 'edtValorComb')) then
        TLabeledEdit(Components[I]).Text := '0,00';
    if Components[I].ClassType = TSpinEdit then
      TSpinEdit(Components[I]).Value := 0;
    if Components[I].ClassType = TRadioGroup then
      TRadioGroup(Components[I]).ItemIndex := -1;
  end;
end;

function TfrmMain.ValidFields: Boolean;
begin
  Result := True;
  for var I := 0 to Pred(ComponentCount) do
  begin
    if Components[I].ClassType = TLabeledEdit then
      if (TLabeledEdit(Components[I]).Text = '') then
      begin
        Application.MessageBox(PChar('Informe um valor para o campo "' + TLabeledEdit(Components[I]).Hint + '".'),'Atenção', MB_ICONWARNING);
        Result := False;
        Break;
      end;
    if Components[I].ClassType = TSpinEdit then
      if TSpinEdit(Components[I]).Name <> 'spLitros' then
        if TSpinEdit(Components[I]).Value = 0 then
        begin
          if True then

          Application.MessageBox(PChar('Informe um valor para o campo "' + TSpinEdit(Components[I]).Hint + '".'),'Atenção', MB_ICONWARNING);
          Result := False;
          Break;
        end;
    if Components[I].ClassType = TRadioGroup then
      if TRadioGroup(Components[I]).ItemIndex = -1 then
      begin
        Application.MessageBox(PChar('Informe um valor para o campo "' + TRadioGroup(Components[I]).Hint + '".'),'Atenção', MB_ICONWARNING);
        Result := False;
        Break;
      end;
  end;
end;

{$ENDREGION}

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Posto.DisposeOf;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Posto := TPosto.Create(frmMain);
  if not FileExists(ExtractFilePath(ParamStr(0)) + '\posto.db') then
  begin
    Application.MessageBox('Atenção! Banco de Dados não encontrado.','Atenção', MB_ICONWARNING);
    btnRelatorio.Enabled := False;
    btnLimpar.Enabled := False;
    btnSalvar.Enabled := False;
  end;
end;

procedure TfrmMain.btnRelatorioClick(Sender: TObject);
begin
  frmReport := TfrmReport.Create(nil);
  try
    frmReport.FDQryReport.Open;
    if not frmReport.FDQryReport.IsEmpty then
    begin
      frmReport.RLReportPosto.Preview();
    end
    else
      Application.MessageBox('Nenhum registro encontrado.','Atenção', MB_ICONWARNING);

  finally
    frmReport.DisposeOf;
  end;
end;

procedure TfrmMain.btnSalvarClick(Sender: TObject);
var
  Success: Boolean;
begin
  if ValidFields then
  begin
    Posto.SaveDB(Success);
    if Success then
    begin
      Application.MessageBox('Registro salvo com sucesso!','Sucesso', MB_ICONINFORMATION);
      ClearFormFields;
      Exit;
    end;
  end;
end;


procedure TfrmMain.spLitrosChange(Sender: TObject);
begin
  Posto := TPosto.Create(frmMain);
  Posto.Posto := edtPosto.Text;
  Posto.Combustivel := rgCombustivel.TipoCombustivel;
  Posto.Tanque := spTanque.Value;
  Posto.Bomba  := spBomba.Value;
  Posto.Litros := spLitros.Value;
  Posto.ValorLitro  := StrToFloat(edtValorComb.Text);
end;

procedure TfrmMain.btnLimparClick(Sender: TObject);
begin
  ClearFormFields;
end;

end.
