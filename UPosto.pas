unit UPosto;

interface

uses
  Vcl.Forms,  System.SysUtils, Vcl.ExtCtrls;

type
  TCombustivel = (Gasolina, Diesel);
  TPosto = class
  private
    FForm: TForm;
    FPosto: String;
    FCombustivel: TCombustivel;
    FTanque: Integer;
    FBomba: Integer;
    FLitros: Double;
    FValorLitro: Double;
    FValor: Double;
    FValorFinal: Double;
    FImposto: Double;
    procedure setValorLitro(const Value: Double);
  public
    property Posto: String read FPosto write FPosto;
    property Combustivel: TCombustivel read FCombustivel write FCombustivel;
    property Tanque: Integer read FTanque write FTanque;
    property Bomba: Integer read FBomba write FBomba;
    property Litros: Double read FLitros write FLitros;
    property ValorLitro: Double read FValorLitro write setValorLitro;
    property Valor: Double read FValor write FValor;
    property ValorFinal: Double read FValorFinal write FValorFinal;
    procedure SaveDB(out Success: Boolean);
    constructor Create(Value: TForm); overload;
  end;

implementation

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

{ TPosto }

procedure TPosto.SaveDB(out Success: Boolean);
var
  _FDConn: TFDConnection;
  _FDDrive: TFDPhysSQLiteDriverLink;
  _FDQuery: TFDQuery;
begin
  _FDConn := TFDConnection.Create(nil);
  _FDQuery := TFDQuery.Create(nil);
  _FDDrive := TFDPhysSQLiteDriverLink.Create(nil);
  try
    try
      _FDConn.Params.DriverID := 'SQLite';
      TFDPhysSQLiteConnectionDefParams(_FDConn.Params).Database := ExtractFilePath(ParamStr(0)) + '\posto.db';
      _FDQuery.Connection := _FDConn;
      _FDQuery.SQL.Add('INSERT INTO POSTO(POSTO, TANQUE, COMBUSTIVEL, BOMBA, LITROS, VALOR, VALOR_IMPOSTO, DATAHORA)');
      _FDQuery.SQL.Add('VALUES(:POSTO, :TANQUE, :COMBUSTIVEL, :BOMBA, :LITROS, :VALOR, :VALOR_IMPOSTO, :DATAHORA)');
      _FDQuery.ParamByName('POSTO').AsString := FPosto;
      _FDQuery.ParamByName('TANQUE').AsInteger := FTanque;
      case FCombustivel of
        Gasolina: _FDQuery.ParamByName('COMBUSTIVEL').AsString := 'G';
        Diesel:   _FDQuery.ParamByName('COMBUSTIVEL').AsString := 'D';
      end;
      _FDQuery.ParamByName('BOMBA').AsInteger := FBomba;
      _FDQuery.ParamByName('LITROS').AsFloat := FLitros;
      _FDQuery.ParamByName('VALOR').AsFloat := FValor;
      _FDQuery.ParamByName('VALOR_IMPOSTO').AsFloat := FValorFinal;
      _FDQuery.ParamByName('DATAHORA').AsDateTime := Now();
      _FDQuery.ExecSQL;
      Success := _FDQuery.RowsAffected > 0;
    except on E: Exception do
      raise Exception.Create('Erro ao salvar registro. Erro: ' + E.Message);
    end;
  finally
    _FDConn.DisposeOf;
    _FDQuery.DisposeOf;
    _FDDrive.DisposeOf;
  end;
end;

procedure TPosto.setValorLitro(const Value: Double);
begin
  FValorLitro := Value;
  FValor := (FValorLitro * FLitros);
  FValorFinal := FValor + ((FImposto * FValor) / 100);
  TLabeledEdit(FForm.FindComponent('edtValor')).Text := FormatFloat('R$ 0.00', FValor);
  TLabeledEdit(FForm.FindComponent('edtValorFinal')).Text := FormatFloat('R$ 0.00', FValorFinal);
end;

constructor TPosto.Create(Value: TForm);
begin
  FForm := Value;
  FImposto := 13;
end;

end.
