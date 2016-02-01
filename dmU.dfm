object dmCantina: TdmCantina
  OldCreateOrder = False
  Height = 245
  Width = 555
  object zConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    UTF8StringsAsWideField = True
    HostName = 'localhost'
    Port = 3306
    Database = 'cantina'
    User = 'root'
    Protocol = 'mysql-5'
    Left = 40
    Top = 16
  end
  object ztbCliente: TZTable
    Connection = zConexao
    TableName = 'c_cliente'
    Left = 40
    Top = 72
    object ztbClientec_id: TLargeintField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'c_id'
      Required = True
    end
    object ztbClientec_nome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 29
      FieldName = 'c_nome'
      Required = True
      Size = 80
    end
    object ztbClientec_sexo: TWideStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 5
      FieldName = 'c_sexo'
      Size = 1
    end
    object ztbClientec_email: TWideStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 35
      FieldName = 'c_email'
      Required = True
      Size = 80
    end
    object ztbClientec_senha: TWideStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 20
      FieldName = 'c_senha'
      Required = True
      Size = 80
    end
    object ztbClientec_curso: TWideStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 18
      FieldName = 'c_curso'
      Size = 100
    end
    object ztbClientec_escola: TWideStringField
      DisplayLabel = 'Escola'
      DisplayWidth = 16
      FieldName = 'c_escola'
      Size = 90
    end
    object ztbClientec_ativo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ativo'
      DisplayWidth = 5
      FieldName = 'c_ativo'
      Required = True
      Size = 1
    end
    object ztbClientec_data_cadastro: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Cadastro'
      FieldName = 'c_data_cadastro'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object ztbClientec_data_inativo: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Inativo'
      FieldName = 'c_data_inativo'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
  end
  object ztbFuncionario: TZTable
    Connection = zConexao
    TableName = 'f_funcionario'
    Left = 112
    Top = 72
    object ztbFuncionariof_id: TLargeintField
      DisplayLabel = 'ID'
      DisplayWidth = 18
      FieldName = 'f_id'
      Required = True
    end
    object ztbFuncionariof_nome: TWideStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 34
      FieldName = 'f_nome'
      Required = True
      Size = 80
    end
    object ztbFuncionariof_usuario: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 12
      FieldName = 'f_usuario'
      Required = True
      Size = 10
    end
    object ztbFuncionariof_senha: TWideStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 28
      FieldName = 'f_senha'
      Required = True
      Size = 80
    end
    object ztbFuncionariof_ativo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ativo'
      DisplayWidth = 5
      FieldName = 'f_ativo'
      Required = True
      Size = 1
    end
    object ztbFuncionariof_data_cadastro: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 25
      FieldName = 'f_data_cadastro'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object ztbFuncionariof_data_inativo: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Inativo'
      DisplayWidth = 24
      FieldName = 'f_data_inativo'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
  end
  object ztbProduto: TZTable
    Connection = zConexao
    TableName = 'p_produto'
    Left = 184
    Top = 72
    object ztbProdutop_id: TLargeintField
      DisplayLabel = 'ID'
      DisplayWidth = 18
      FieldName = 'p_id'
      Required = True
    end
    object ztbProdutop_nome: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 46
      FieldName = 'p_nome'
      Required = True
      Size = 80
    end
    object ztbProdutop_foto: TBlobField
      DisplayLabel = 'Foto'
      DisplayWidth = 12
      FieldName = 'p_foto'
    end
    object ztbProdutop_preco: TFloatField
      DisplayLabel = 'Preco'
      DisplayWidth = 12
      FieldName = 'p_preco'
      Required = True
      currency = True
    end
    object ztbProdutop_custo: TFloatField
      DisplayLabel = 'Custo'
      DisplayWidth = 12
      FieldName = 'p_custo'
      currency = True
    end
    object ztbProdutop_quantidade: TLargeintField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 18
      FieldName = 'p_quantidade'
      Required = True
    end
    object ztbProdutop_qtd_alerta: TLargeintField
      DisplayLabel = 'Alerta Reposicao'
      DisplayWidth = 18
      FieldName = 'p_qtd_alerta'
    end
    object ztbProdutop_ativo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ativo'
      DisplayWidth = 5
      FieldName = 'p_ativo'
      Required = True
      Size = 1
    end
    object ztbProdutop_data_cadastro: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 26
      FieldName = 'p_data_cadastro'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object ztbProdutop_data_inativo: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Inativo'
      DisplayWidth = 28
      FieldName = 'p_data_inativo'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
  end
  object ztbVenda: TZTable
    Connection = zConexao
    TableName = 'v_venda'
    Left = 248
    Top = 72
    object ztbVendav_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'v_id'
      Required = True
    end
    object ztbVendav_cliente: TLargeintField
      DisplayLabel = 'IDCliente'
      FieldName = 'v_cliente'
      Required = True
    end
    object ztbVendav_caixa: TLargeintField
      DisplayLabel = 'IDCaixa'
      FieldName = 'v_caixa'
    end
    object ztbVendav_atendente: TLargeintField
      DisplayLabel = 'Atendente'
      FieldName = 'v_atendente'
    end
    object ztbVendav_status: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'v_status'
      Required = True
      Size = 9
    end
    object ztbVendav_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'v_total'
      currency = True
    end
    object ztbVendav_forma_pagamento: TWideStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'v_forma_pagamento'
      Required = True
      Size = 8
    end
    object ztbVendav_origem: TWideStringField
      DisplayLabel = 'Origem'
      FieldName = 'v_origem'
      Required = True
      Size = 8
    end
    object ztbVendav_data_consumo: TDateTimeField
      DisplayLabel = 'Data Consumo'
      FieldName = 'v_data_consumo'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object ztbVendav_data: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'v_data'
      Required = True
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object ztbVendav_data_devolucao: TDateTimeField
      DisplayLabel = 'Data de Devolucao'
      FieldName = 'v_data_devolucao'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
  end
  object zqrCliente: TZQuery
    Connection = zConexao
    UpdateObject = updCliente
    SQL.Strings = (
      'SELECT'
      '  c.c_id,'
      '  c.c_nome,'
      '  c.c_sexo,'
      '  c.c_email,'
      '  c.c_senha,'
      '  c.c_curso,'
      '  c.c_escola,'
      '  c.c_ativo,'
      '  c.c_data_cadastro,'
      '  c.c_data_inativo,'
      '  co.co_cliente,'
      '  co.co_saldo'
      ''
      'FROM'
      '  c_cliente c,'
      '  co_conta co'
      ''
      'WHERE'
      '  co.co_cliente = c.c_id AND'
      '  c.c_ativo = '#39'S'#39)
    Params = <>
    Left = 40
    Top = 128
    object zqrClientec_id: TLargeintField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'c_id'
      Required = True
    end
    object zqrClientec_ativo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ativo'
      DisplayWidth = 5
      FieldName = 'c_ativo'
      Required = True
      Size = 1
    end
    object zqrClientec_nome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 39
      FieldName = 'c_nome'
      Required = True
      Size = 80
    end
    object zqrClienteco_saldo: TFloatField
      DisplayLabel = 'Saldo da Conta'
      DisplayWidth = 15
      FieldName = 'co_saldo'
      Required = True
      currency = True
    end
    object zqrClientec_sexo: TWideStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 5
      FieldName = 'c_sexo'
      Size = 1
    end
    object zqrClientec_email: TWideStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 35
      FieldName = 'c_email'
      Required = True
      Size = 80
    end
    object zqrClientec_senha: TWideStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 23
      FieldName = 'c_senha'
      Required = True
      Size = 80
    end
    object zqrClientec_curso: TWideStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 27
      FieldName = 'c_curso'
      Size = 100
    end
    object zqrClientec_escola: TWideStringField
      DisplayLabel = 'Escola'
      DisplayWidth = 28
      FieldName = 'c_escola'
      Size = 90
    end
    object zqrClientec_data_cadastro: TDateTimeField
      DisplayLabel = 'Data de Cadastro'
      DisplayWidth = 27
      FieldName = 'c_data_cadastro'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object zqrClientec_data_inativo: TDateTimeField
      DisplayLabel = 'Data Inativo'
      DisplayWidth = 25
      FieldName = 'c_data_inativo'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
  end
  object updCliente: TZUpdateSQL
    ModifySQL.Strings = (
      'UPDATE co_conta SET'
      '  co_saldo = :co_saldo'
      'WHERE'
      '  co_conta.co_cliente = :OLD_co_cliente')
    UseSequenceFieldForRefreshSQL = False
    Left = 40
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'co_saldo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_co_cliente'
        ParamType = ptUnknown
      end>
  end
  object zqrVendaItem: TZQuery
    Connection = zConexao
    UpdateObject = updVendaItem
    SQL.Strings = (
      'SELECT'
      '  vi.*,'
      '  p.p_nome,'
      '  p.p_preco,'
      '  p.p_quantidade'
      ''
      'FROM'
      '  vi_venda_item vi,'
      '  p_produto p'
      ''
      'WHERE'
      '  vi.vi_produto = p.p_id')
    Params = <>
    Left = 312
    Top = 72
    object zqrVendaItemvi_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'vi_id'
      Required = True
    end
    object zqrVendaItemvi_produto: TLargeintField
      DisplayLabel = 'ID Produto'
      FieldName = 'vi_produto'
      Required = True
    end
    object zqrVendaItemvi_cliente: TLargeintField
      DisplayLabel = 'ID Cliente'
      FieldName = 'vi_cliente'
      Required = True
    end
    object zqrVendaItemvi_venda: TLargeintField
      DisplayLabel = 'ID Venda'
      FieldName = 'vi_venda'
      Required = True
    end
    object zqrVendaItemvi_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vi_valor'
      Required = True
    end
    object zqrVendaItemvi_quantidade: TLargeintField
      DisplayLabel = 'Quantidade'
      FieldName = 'vi_quantidade'
      Required = True
    end
    object zqrVendaItemvi_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'vi_total'
      currency = True
    end
    object zqrVendaItemvi_status: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'vi_status'
      Required = True
      Size = 9
    end
    object zqrVendaItemvi_prod_trocado: TLargeintField
      DisplayLabel = 'Trocado'
      FieldName = 'vi_prod_trocado'
    end
    object zqrVendaItemp_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'p_nome'
      Required = True
      Size = 80
    end
    object zqrVendaItemp_preco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'p_preco'
      Required = True
      currency = True
    end
    object zqrVendaItemp_quantidade: TLargeintField
      DisplayLabel = 'Estoque'
      FieldName = 'p_quantidade'
      Required = True
    end
  end
  object zrqrProduto: TZReadOnlyQuery
    Connection = zConexao
    SQL.Strings = (
      'SELECT'
      '  *'
      ''
      'FROM'
      '  p_produto'
      ''
      'WHERE'
      '  p_ativo = '#39'S'#39)
    Params = <>
    Left = 248
    Top = 128
    object zrqrProdutop_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'p_id'
      Required = True
    end
    object zrqrProdutop_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'p_nome'
      Required = True
      Size = 80
    end
    object zrqrProdutop_foto: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'p_foto'
    end
    object zrqrProdutop_preco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'p_preco'
      Required = True
      currency = True
    end
    object zrqrProdutop_custo: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'p_custo'
      currency = True
    end
    object zrqrProdutop_quantidade: TLargeintField
      DisplayLabel = 'Quantidade'
      FieldName = 'p_quantidade'
      Required = True
    end
    object zrqrProdutop_qtd_alerta: TLargeintField
      DisplayLabel = 'Quantidade de Alerta'
      FieldName = 'p_qtd_alerta'
    end
    object zrqrProdutop_ativo: TWideStringField
      DisplayLabel = 'Ativo'
      FieldName = 'p_ativo'
      Required = True
      Size = 1
    end
    object zrqrProdutop_data_cadastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'p_data_cadastro'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
    object zrqrProdutop_data_inativo: TDateTimeField
      DisplayLabel = 'Data Inativo'
      FieldName = 'p_data_inativo'
      DisplayFormat = 'DD/MM/YYYY - hh:mm:ss'
    end
  end
  object updVendaItem: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM vi_venda_item'
      'WHERE'
      '  vi_venda_item.vi_id = :OLD_vi_id AND'
      '  vi_venda_item.vi_produto = :OLD_vi_produto AND'
      '  vi_venda_item.vi_cliente = :OLD_vi_cliente AND'
      '  vi_venda_item.vi_venda = :OLD_vi_venda')
    InsertSQL.Strings = (
      'INSERT INTO vi_venda_item'
      
        '  (vi_produto, vi_cliente, vi_venda, vi_valor, vi_quantidade, vi' +
        '_total, '
      '   vi_status, vi_prod_trocado)'
      'VALUES'
      
        '  (:vi_produto, :vi_cliente, :vi_venda, :vi_valor, :vi_quantidad' +
        'e, :vi_total, '
      '   :vi_status, :vi_prod_trocado)')
    ModifySQL.Strings = (
      'UPDATE vi_venda_item SET'
      '  vi_produto = :vi_produto,'
      '  vi_cliente = :vi_cliente,'
      '  vi_venda = :vi_venda,'
      '  vi_valor = :vi_valor,'
      '  vi_quantidade = :vi_quantidade,'
      '  vi_total = :vi_total,'
      '  vi_status = :vi_status,'
      '  vi_prod_trocado = :vi_prod_trocado'
      'WHERE'
      '  vi_venda_item.vi_id = :OLD_vi_id AND'
      '  vi_venda_item.vi_produto = :OLD_vi_produto AND'
      '  vi_venda_item.vi_cliente = :OLD_vi_cliente AND'
      '  vi_venda_item.vi_venda = :OLD_vi_venda')
    UseSequenceFieldForRefreshSQL = False
    Left = 392
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vi_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_quantidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vi_prod_trocado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_vi_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_vi_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_vi_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_vi_venda'
        ParamType = ptUnknown
      end>
  end
  object dsVenda: TDataSource
    DataSet = ztbVenda
    Left = 248
    Top = 16
  end
  object zrqrCalculaTotal: TZReadOnlyQuery
    Connection = zConexao
    SQL.Strings = (
      'SELECT'
      'sum(vi_total) as Total'
      ''
      'FROM'
      'vi_venda_item'
      ''
      'WHERE'
      'vi_venda= :idvenda')
    Params = <
      item
        DataType = ftLargeint
        Name = 'idvenda'
        ParamType = ptUnknown
        Value = 0
      end>
    Left = 320
    Top = 128
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'idvenda'
        ParamType = ptUnknown
        Value = 0
      end>
  end
end
