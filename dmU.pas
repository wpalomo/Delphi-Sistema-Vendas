unit dmU;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, ZAbstractConnection, ZConnection, ZSqlUpdate;

type
  TdmCantina = class(TDataModule)
    zConexao: TZConnection;
    ztbCliente: TZTable;
    ztbFuncionario: TZTable;
    ztbProduto: TZTable;
    ztbVenda: TZTable;
    ztbClientec_id: TLargeintField;
    ztbClientec_nome: TWideStringField;
    ztbClientec_sexo: TWideStringField;
    ztbClientec_email: TWideStringField;
    ztbClientec_senha: TWideStringField;
    ztbClientec_curso: TWideStringField;
    ztbClientec_escola: TWideStringField;
    ztbClientec_ativo: TWideStringField;
    ztbFuncionariof_id: TLargeintField;
    ztbFuncionariof_nome: TWideStringField;
    ztbFuncionariof_usuario: TWideStringField;
    ztbFuncionariof_senha: TWideStringField;
    ztbFuncionariof_ativo: TWideStringField;
    ztbFuncionariof_data_cadastro: TDateTimeField;
    ztbFuncionariof_data_inativo: TDateTimeField;
    ztbProdutop_id: TLargeintField;
    ztbProdutop_nome: TWideStringField;
    ztbProdutop_foto: TBlobField;
    ztbProdutop_preco: TFloatField;
    ztbProdutop_custo: TFloatField;
    ztbProdutop_quantidade: TLargeintField;
    ztbProdutop_qtd_alerta: TLargeintField;
    ztbProdutop_ativo: TWideStringField;
    ztbProdutop_data_cadastro: TDateTimeField;
    ztbProdutop_data_inativo: TDateTimeField;
    ztbVendav_id: TLargeintField;
    ztbVendav_cliente: TLargeintField;
    ztbVendav_caixa: TLargeintField;
    ztbVendav_atendente: TLargeintField;
    ztbVendav_status: TWideStringField;
    ztbVendav_total: TFloatField;
    ztbVendav_forma_pagamento: TWideStringField;
    ztbVendav_origem: TWideStringField;
    ztbVendav_data_consumo: TDateTimeField;
    ztbVendav_data: TDateTimeField;
    ztbVendav_data_devolucao: TDateTimeField;
    ztbClientec_data_cadastro: TDateTimeField;
    ztbClientec_data_inativo: TDateTimeField;
    zqrCliente: TZQuery;
    zqrClientec_id: TLargeintField;
    zqrClientec_nome: TWideStringField;
    zqrClientec_sexo: TWideStringField;
    zqrClientec_email: TWideStringField;
    zqrClientec_senha: TWideStringField;
    zqrClientec_curso: TWideStringField;
    zqrClientec_escola: TWideStringField;
    zqrClientec_ativo: TWideStringField;
    zqrClientec_data_cadastro: TDateTimeField;
    zqrClientec_data_inativo: TDateTimeField;
    zqrClienteco_saldo: TFloatField;
    updCliente: TZUpdateSQL;
    zqrVendaItem: TZQuery;
    zrqrProduto: TZReadOnlyQuery;
    updVendaItem: TZUpdateSQL;
    dsVenda: TDataSource;
    zqrVendaItemvi_id: TLargeintField;
    zqrVendaItemvi_produto: TLargeintField;
    zqrVendaItemvi_cliente: TLargeintField;
    zqrVendaItemvi_venda: TLargeintField;
    zqrVendaItemvi_valor: TFloatField;
    zqrVendaItemvi_quantidade: TLargeintField;
    zqrVendaItemvi_total: TFloatField;
    zqrVendaItemvi_status: TWideStringField;
    zqrVendaItemvi_prod_trocado: TLargeintField;
    zqrVendaItemp_nome: TWideStringField;
    zqrVendaItemp_preco: TFloatField;
    zqrVendaItemp_quantidade: TLargeintField;
    zrqrProdutop_id: TLargeintField;
    zrqrProdutop_nome: TWideStringField;
    zrqrProdutop_foto: TBlobField;
    zrqrProdutop_preco: TFloatField;
    zrqrProdutop_custo: TFloatField;
    zrqrProdutop_quantidade: TLargeintField;
    zrqrProdutop_qtd_alerta: TLargeintField;
    zrqrProdutop_ativo: TWideStringField;
    zrqrProdutop_data_cadastro: TDateTimeField;
    zrqrProdutop_data_inativo: TDateTimeField;
    zrqrCalculaTotal: TZReadOnlyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCantina: TdmCantina;

implementation

{$R *.dfm}

end.
