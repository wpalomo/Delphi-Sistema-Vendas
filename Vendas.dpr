program Vendas;

uses
  Forms,
  PrincipalU in 'PrincipalU.pas' {frmPrincipal},
  dmU in 'dmU.pas' {dmCantina: TDataModule},
  modeloListaU in 'modeloListaU.pas' {frmModeloLista},
  clienteListaU in 'clienteListaU.pas' {frmClienteLista},
  modeloDadosU in 'modeloDadosU.pas' {frmModeloDados},
  clienteDadosU in 'clienteDadosU.pas' {frmClienteDados},
  funcionarioListaU in 'funcionarioListaU.pas' {frmFuncionarioLista},
  funcionarioDadosU in 'funcionarioDadosU.pas' {frmFuncionarioDados},
  produtoListaU in 'produtoListaU.pas' {frmProdutoLista},
  produtoDadosU in 'produtoDadosU.pas' {frmProdutoDados},
  identificaClienteU in 'identificaClienteU.pas' {frmIdentificaConta},
  novoDepositoU in 'novoDepositoU.pas' {frmDeposito},
  pontoVendaU in 'pontoVendaU.pas' {frmPontoVenda},
  identificaClientePDV in 'identificaClientePDV.pas' {frmIdentificaContaPDV},
  depositaTrocoU in 'depositaTrocoU.pas' {frmDepositaTroco},
  ajudaU in 'ajudaU.pas' {frmAjuda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmCantina, dmCantina);
  Application.Run;
end.
