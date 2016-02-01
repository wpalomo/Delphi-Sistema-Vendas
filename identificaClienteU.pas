unit identificaClienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modeloListaU, DB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmIdentificaConta = class(TfrmModeloLista)
    pnControle2: TPanel;
    btnVoltar: TBitBtn;
    btnEscolhe: TBitBtn;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnEscolheClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIdentificaConta: TfrmIdentificaConta;

implementation

{$R *.dfm}
uses dmU, principalU, novoDepositoU;

procedure TfrmIdentificaConta.btnEscolheClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmDeposito);

end;

procedure TfrmIdentificaConta.btnVoltarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
