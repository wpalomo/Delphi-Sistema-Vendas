unit identificaClientePDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, identificaClienteU, DB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmIdentificaContaPDV = class(TfrmIdentificaConta)
    btnClientePadrao: TBitBtn;
    procedure btnClientePadraoClick(Sender: TObject);
    procedure btnEscolheClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIdentificaContaPDV: TfrmIdentificaContaPDV;

implementation
  uses PontoVendaU, PrincipalU, dmU;

{$R *.dfm}

procedure TfrmIdentificaContaPDV.btnClientePadraoClick(Sender: TObject);
begin
    with (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda) do begin
      IDCliente := 1;
      edtCliente.Text := 'Cliente Padrao';
      dmCantina.ztbVenda.Edit;
        dmCantina.ztbVenda.FieldByName('v_cliente').Value := IDCliente;
      dmCantina.ztbVenda.Post;
      edtNovoSaldo.Clear;
      edtSaldoAtual.Clear;
  end;
  self.Close;
end;

procedure TfrmIdentificaContaPDV.btnEscolheClick(Sender: TObject);
var
  novosaldo, saldo : real;
begin
  with (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda) do begin
      IDCliente := dmCantina.zqrCliente.FieldByName('c_id').Value;
      edtCliente.Text := dmCantina.zqrCliente.FieldByName('c_nome').Value;

      dmCantina.ztbVenda.Edit;
        dmCantina.ztbVenda.FieldByName('v_cliente').Value := IDCliente;
      dmCantina.ztbVenda.Post;

      saldo := dmCantina.zqrCliente.FieldByName('co_saldo').Value; // grava o saldo em uma variavel temporaria
      novosaldo := saldo - dmCantina.ztbVenda.FieldByName('v_total').Value; // calcula o novo saldo

      // mostra os valor formatados
      edtSaldoAtual.Text := FloatToStr(saldo);
      edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);
  end;
  self.Close;
end;

end.
