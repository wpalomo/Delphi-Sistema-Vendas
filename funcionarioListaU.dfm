inherited frmFuncionarioLista: TfrmFuncionarioLista
  Caption = 'Lista de Funcion'#225'rios'
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    inherited dbgDados: TDBGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      Columns = <
        item
          Expanded = False
          FieldName = 'f_id'
          ReadOnly = True
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_ativo'
          ReadOnly = True
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_nome'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_usuario'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_data_cadastro'
          ReadOnly = True
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_data_inativo'
          ReadOnly = True
          Width = 150
          Visible = True
        end>
    end
  end
  inherited pnControle: TPanel
    inherited btnEditar: TBitBtn
      OnClick = btnEditarClick
    end
  end
  inherited ds: TDataSource
    DataSet = dmCantina.ztbFuncionario
  end
end
