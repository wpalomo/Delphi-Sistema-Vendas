unit produtoListaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modeloListaU, DB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmProdutoLista = class(TfrmModeloLista)
    procedure btnEditarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutoLista: TfrmProdutoLista;

implementation

{$R *.dfm}
  uses dmU, produtoDadosU, principalU;

procedure TfrmProdutoLista.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmProdutoDados);
end;

procedure TfrmProdutoLista.btnEditarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmProdutoDados);
end;

end.
