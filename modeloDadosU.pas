unit modeloDadosU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls;

type
  TfrmModeloDados = class(TForm)
    gbDados: TGroupBox;
    pnControle: TPanel;
    btnFechar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    ds: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloDados: TfrmModeloDados;

implementation

{$R *.dfm}

procedure TfrmModeloDados.btnCancelarClick(Sender: TObject);
begin
  ds.DataSet.Cancel;
end;

procedure TfrmModeloDados.btnFecharClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmModeloDados.btnSalvarClick(Sender: TObject);
begin
  ds.DataSet.Post;
end;

procedure TfrmModeloDados.dsStateChange(Sender: TObject);
begin
  if ds.State in [dsInsert, dsEdit] then
  begin
    btnSalvar.Enabled := true;
    btnCancelar.Enabled := true;
  end
  else
  begin
    btnSalvar.Enabled := false;
    btnCancelar.Enabled := false;
  end;
end;

procedure TfrmModeloDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure TfrmModeloDados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_ESCAPE then
    begin
      self.Close;
    end;
end;

end.
