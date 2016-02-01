unit modeloListaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB;

type
  TfrmModeloLista = class(TForm)
    gbFiltro: TGroupBox;
    gbDados: TGroupBox;
    pnControle: TPanel;
    edtFiltro: TEdit;
    lbFiltro: TLabel;
    btnFiltro: TBitBtn;
    dbgDados: TDBGrid;
    btnFechar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAdicionar: TBitBtn;
    btnEditar: TBitBtn;
    ds: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbgDadosTitleClick(Column: TColumn);
    procedure edtFiltroChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloLista: TfrmModeloLista;
  campoFiltro: String;

implementation

{$R *.dfm}

procedure TfrmModeloLista.btnAdicionarClick(Sender: TObject);
begin
    ds.DataSet.Append;
end;

procedure TfrmModeloLista.btnExcluirClick(Sender: TObject);
begin
  if ds.DataSet.RecordCount = 0 then begin
      MessageBox(Application.Handle, Pchar('N�o existe para ser exclu�do.'), Pchar('Falha ao exluir registro'), MB_OK+MB_ICONERROR);
      exit;
  end;

  if MessageBox(Application.Handle, Pchar('Deseja exluir este registro?'), Pchar('Confirmar exclus�o'), MB_YESNO+MB_ICONQUESTION ) = ID_YES then
        ds.DataSet.Delete;
end;

procedure TfrmModeloLista.btnFecharClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmModeloLista.btnFiltroClick(Sender: TObject);
begin
    if ds.DataSet.FieldByName(campoFiltro) is TWideStringField then
    begin
      // Define a regra para campos de texto do filtro
      ds.DataSet.Filter := campoFiltro+' like '+ QuotedStr('*'+edtFiltro.Text+'*');
    end
    else begin
      // Define a regra para campos numericos, datas, etc SEM O LIKE do filtro
      ds.DataSet.Filter := campoFiltro+' = '+edtFiltro.Text;
    end;
      // Ativa o filtro
      ds.DataSet.Filtered := True;

      edtFiltro.SetFocus;  // Volta o foco para o campo de pesquisa
end;

procedure TfrmModeloLista.dbgDadosTitleClick(Column: TColumn);
begin
    lbFiltro.Caption := Column.Title.Caption+': '; // setando o label
    edtFiltro.Clear; // limpa o campo filtro
    campoFiltro := Column.FieldName; // altera o campo que sera utilizado no filtro
    ds.DataSet.Filtered := False; // habilita o Filtered, igual ao Properties. quando usar o filter tem que ta marcado o filtered

    edtFiltro.SetFocus; // joga o foco da aplicacao para a caixa de texto do filtro
end;

procedure TfrmModeloLista.edtFiltroChange(Sender: TObject);
begin
  if Length(edtFiltro.Text) = 0 then
     begin
        btnFiltro.Enabled := false;
        ds.DataSet.Filtered := false;
     end
     else begin
        btnFiltro.Enabled := true;
     end;
end;

procedure TfrmModeloLista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Close;

  Action := caFree;
  self := nil;
end;

procedure TfrmModeloLista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    self.Close;
  end;
end;

procedure TfrmModeloLista.FormShow(Sender: TObject);
begin
    ds.DataSet.Open;

    lbFiltro.Caption := dbgDados.Columns[0].Title.Caption+': ';
    edtFiltro.Clear;
    campoFiltro := dbgDados.Columns[0].FieldName;

    ds.DataSet.Filtered := false;

end;

end.
