inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ExplicitWidth = 962
    inherited tabListagem: TTabSheet
      ExplicitWidth = 954
      inherited grdListagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 22
      ExplicitWidth = 954
      object edtCategoriaID: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 64
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtDescricao: TLabeledEdit
        Tag = 2
        Left = 20
        Top = 128
        Width = 381
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 30
        TabOrder = 1
      end
    end
  end
  inherited pnRodaPe: TPanel
    ExplicitWidth = 962
    inherited btnFechar: TBitBtn
      ExplicitLeft = 863
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT ID, DESCRICAO FROM CATEGORIAS')
    object QryListagemID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      ReadOnly = True
    end
    object QryListagemDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
end
