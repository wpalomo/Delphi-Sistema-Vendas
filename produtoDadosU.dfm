inherited frmProdutoDados: TfrmProdutoDados
  Caption = 'Dados do Produto'
  ClientHeight = 510
  ClientWidth = 764
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 780
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    Width = 764
    Height = 424
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 447
      Height = 407
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label9: TLabel
        Left = 16
        Top = 246
        Width = 119
        Height = 16
        Caption = 'Data do Cadastro:'
        FocusControl = dbeDataCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 20
        Width = 19
        Height = 16
        Caption = 'ID:'
        FocusControl = dbeID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 233
        Top = 246
        Width = 86
        Height = 16
        Caption = 'Data Inativo:'
        FocusControl = dbeDataInativo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 63
        Width = 57
        Height = 16
        Caption = 'Produto:'
        FocusControl = dbeProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 123
        Width = 42
        Height = 16
        Caption = 'Preco:'
        FocusControl = dbePreco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 233
        Top = 123
        Width = 42
        Height = 16
        Caption = 'Custo:'
        FocusControl = dbeCusto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 17
        Top = 177
        Width = 79
        Height = 16
        Caption = 'Quantidade:'
        FocusControl = dbeQuantidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 233
        Top = 177
        Width = 100
        Height = 16
        Caption = 'Estoque M'#237'nimo'
        FocusControl = dbeEstoqueMinimo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 193
        Top = 20
        Width = 40
        Height = 16
        Caption = 'Ativo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcAtivo: TDBComboBox
        Left = 239
        Top = 17
        Width = 119
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_ativo'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'S'
          'N')
        ParentFont = False
        TabOrder = 1
      end
      object dbeEstoqueMinimo: TDBEdit
        Left = 233
        Top = 199
        Width = 200
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_qtd_alerta'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dbeCusto: TDBEdit
        Left = 233
        Top = 145
        Width = 200
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_custo'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dbeDataCadastro: TDBEdit
        Left = 16
        Top = 268
        Width = 200
        Height = 26
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'p_data_cadastro'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object dbeDataInativo: TDBEdit
        Left = 233
        Top = 268
        Width = 200
        Height = 26
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'p_data_inativo'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object dbeID: TDBEdit
        Left = 41
        Top = 15
        Width = 135
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_id'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbePreco: TDBEdit
        Left = 16
        Top = 145
        Width = 200
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_preco'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbeProduto: TDBEdit
        Left = 16
        Top = 85
        Width = 417
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_nome'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dbeQuantidade: TDBEdit
        Left = 17
        Top = 199
        Width = 199
        Height = 26
        CharCase = ecUpperCase
        DataField = 'p_quantidade'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 449
      Top = 15
      Width = 313
      Height = 407
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 391
      ExplicitWidth = 301
      ExplicitHeight = 414
      object gbFoto: TGroupBox
        Left = 0
        Top = 0
        Width = 313
        Height = 407
        Align = alClient
        Caption = 'Foto:'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = -18
        ExplicitTop = -4
        ExplicitWidth = 301
        ExplicitHeight = 414
        object imProduto: TImage
          Left = 2
          Top = 15
          Width = 309
          Height = 390
          Hint = 'Duplo clique para adicionar ou editar imagem do produto'
          Align = alClient
          AutoSize = True
          Center = True
          ParentShowHint = False
          Proportional = True
          ShowHint = True
          Stretch = True
          OnDblClick = imProdutoDblClick
          ExplicitLeft = 40
          ExplicitTop = 56
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
    end
  end
  inherited pnControle: TPanel
    Top = 424
    Width = 764
    inherited btnFechar: TBitBtn
      Left = 675
    end
    inherited btnCancelar: TBitBtn
      Left = 577
    end
    inherited btnSalvar: TBitBtn
      Left = 489
    end
  end
  inherited ds: TDataSource
    DataSet = dmCantina.ztbProduto
    OnDataChange = dsDataChange
    Left = 64
    Top = 344
  end
  object odFoto: TOpenPictureDialog
    Filter = 
      'Arquivo de imagem JPG(*.jpg)|*.jpg|Arquivo de imagem JPEG (*.jpe' +
      'g)|*.jpeg'
    Title = 'Escolha a foto do produto'
    Left = 272
    Top = 352
  end
end
