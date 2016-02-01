unit depositaTrocoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, identificaClienteU, DB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmDepositaTroco = class(TfrmIdentificaConta)
    procedure btnEscolheClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepositaTroco: TfrmDepositaTroco;

implementation
uses PrincipalU, PontoVendaU;
{$R *.dfm}

procedure TfrmDepositaTroco.btnEscolheClick(Sender: TObject);
var
troco : real;

begin
  troco := StrToFloat((frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda).edtTroco.Text);
  ds.DataSet.Edit;
    ds.DataSet.FieldByName('co_saldo').Value := ds.DataSet.FieldByName('co_saldo').Value + troco;
  ds.DataSet.Post;
end;

end.
