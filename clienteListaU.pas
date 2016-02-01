unit clienteListaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modeloListaU, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB;

type
  TfrmClienteLista = class(TfrmModeloLista)
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteLista: TfrmClienteLista;

implementation

{$R *.dfm}
  uses dmU, clienteDadosU, principalU;

procedure TfrmClienteLista.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmClienteDados);
end;

procedure TfrmClienteLista.btnEditarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmClienteDados);
end;

end.
