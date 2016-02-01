unit funcionarioDadosU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modeloDadosU, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TfrmFuncionarioDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeFuncionario: TDBEdit;
    Label3: TLabel;
    dbeUsuario: TDBEdit;
    Label4: TLabel;
    dbeSenha: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbeDataCadastro: TDBEdit;
    Label7: TLabel;
    dbeDataInativo: TDBEdit;
    dbeAtivo: TDBComboBox;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarioDados: TfrmFuncionarioDados;

implementation

{$R *.dfm}
  uses dmU;

procedure TfrmFuncionarioDados.btnSalvarClick(Sender: TObject);
begin
  if dmCantina.ztbFuncionariof_ativo.Value = 'N' then
  begin
    dmCantina.ztbFuncionariof_data_inativo.Value := now;
  end;

  dmCantina.ztbFuncionario.Post;

end;

end.
