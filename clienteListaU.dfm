inherited frmClienteLista: TfrmClienteLista
  Caption = 'Lista de Clientes'
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    inherited dbgDados: TDBGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'c_id'
          ReadOnly = True
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_ativo'
          ReadOnly = True
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_nome'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_email'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'c_sexo'
          ReadOnly = True
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_curso'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_escola'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_data_cadastro'
          ReadOnly = True
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_data_inativo'
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
    DataSet = dmCantina.ztbCliente
  end
end
