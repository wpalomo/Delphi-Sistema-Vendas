unit clienteDadosU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modeloDadosU, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmClienteDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeEmail: TDBEdit;
    Label5: TLabel;
    dbeSenha: TDBEdit;
    Label6: TLabel;
    debCurso: TDBEdit;
    Label7: TLabel;
    dbeEscola: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeDataCadastro: TDBEdit;
    Label10: TLabel;
    dbeDataInativo: TDBEdit;
    dbcSexo: TDBComboBox;
    dbcAtivo: TDBComboBox;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteDados: TfrmClienteDados;

implementation

{$R *.dfm}
 uses dmU;

procedure TfrmClienteDados.btnSalvarClick(Sender: TObject);
begin
  if dmCantina.ztbClientec_ativo.Value = 'N' then
  begin
    dmCantina.ztbClientec_data_inativo.Value := now;
  end;

  dmCantina.ztbCliente.Post;

end;

end.
