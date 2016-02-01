inherited frmFuncionarioDados: TfrmFuncionarioDados
  Caption = 'Dados do Funcion'#225'rio'
  ClientHeight = 408
  ClientWidth = 686
  WindowState = wsMaximized
  ExplicitWidth = 702
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    Width = 686
    Height = 322
    object Label1: TLabel
      Left = 25
      Top = 32
      Width = 23
      Height = 18
      Caption = 'ID:'
      FocusControl = dbeID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 72
      Width = 93
      Height = 18
      Caption = 'Funcion'#225'rio:'
      FocusControl = dbeFuncionario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 128
      Width = 63
      Height = 18
      Caption = 'Usu'#225'rio:'
      FocusControl = dbeUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 272
      Top = 128
      Width = 51
      Height = 18
      Caption = 'Senha:'
      FocusControl = dbeSenha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 193
      Top = 32
      Width = 44
      Height = 18
      Caption = 'Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 25
      Top = 184
      Width = 133
      Height = 18
      Caption = 'Data do Cadastro:'
      FocusControl = dbeDataCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 272
      Top = 184
      Width = 98
      Height = 18
      Caption = 'Data Inativo:'
      FocusControl = dbeDataInativo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeID: TDBEdit
      Left = 54
      Top = 29
      Width = 88
      Height = 26
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'f_id'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbeFuncionario: TDBEdit
      Left = 25
      Top = 96
      Width = 447
      Height = 26
      CharCase = ecUpperCase
      DataField = 'f_nome'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbeUsuario: TDBEdit
      Left = 25
      Top = 152
      Width = 200
      Height = 26
      CharCase = ecUpperCase
      DataField = 'f_usuario'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbeSenha: TDBEdit
      Left = 272
      Top = 152
      Width = 200
      Height = 26
      CharCase = ecUpperCase
      DataField = 'f_senha'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
    end
    object dbeDataCadastro: TDBEdit
      Left = 25
      Top = 208
      Width = 200
      Height = 26
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'f_data_cadastro'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object dbeDataInativo: TDBEdit
      Left = 272
      Top = 208
      Width = 200
      Height = 26
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'f_data_inativo'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dbeAtivo: TDBComboBox
      Left = 243
      Top = 29
      Width = 104
      Height = 26
      CharCase = ecUpperCase
      DataField = 'f_ativo'
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
  end
  inherited pnControle: TPanel
    Top = 322
    Width = 686
    inherited btnFechar: TBitBtn
      Left = 597
    end
    inherited btnCancelar: TBitBtn
      Left = 499
    end
    inherited btnSalvar: TBitBtn
      Left = 411
    end
  end
  inherited ds: TDataSource
    DataSet = dmCantina.ztbFuncionario
  end
end
