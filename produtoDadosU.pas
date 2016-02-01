unit produtoDadosU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modeloDadosU, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, JPEG,
  ExtDlgs;

type
  TfrmProdutoDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeProduto: TDBEdit;
    Label4: TLabel;
    dbePreco: TDBEdit;
    Label5: TLabel;
    dbeCusto: TDBEdit;
    Label6: TLabel;
    dbeQuantidade: TDBEdit;
    Label7: TLabel;
    dbeEstoqueMinimo: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeDataCadastro: TDBEdit;
    Label10: TLabel;
    dbeDataInativo: TDBEdit;
    dbcAtivo: TDBComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    gbFoto: TGroupBox;
    imProduto: TImage;
    odFoto: TOpenPictureDialog;
    procedure btnSalvarClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure imProdutoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutoDados: TfrmProdutoDados;

implementation

{$R *.dfm}
  uses dmU;

procedure TfrmProdutoDados.btnSalvarClick(Sender: TObject);
begin
  if dmCantina.ztbProdutop_ativo.Value = 'N' then
  begin
    dmCantina.ztbProdutop_data_inativo.Value := now;
  end;

  dmCantina.ztbProduto.Post;

end;

procedure TfrmProdutoDados.dsDataChange(Sender: TObject; Field: TField);
var
  jpg: TJPEGImage;
  stream : TMemoryStream;

begin
  inherited;

  if not (dmCantina.ztbProdutop_foto.IsNull) then // se houver foto para o produto
  begin

    try
        jpg := TJPEGImage.Create; // aloca espaço na memória
        stream := TMemoryStream.Create; // cria instancia das classes

        dmCantina.ztbProdutop_foto.SaveToStream(stream); // carrega imagem do campo p_foto para stream (memória RAM do PC)
        stream.Seek(0, soFromBeginning);  // retornando o ponteiro para o início da stream
        jpg.LoadFromStream(stream); // grava a stream como JPG
        imProduto.Picture.Assign(jpg); // carrega a foto na caixa de imagem (image do formulário)

        jpg.Free; // libera memória (apaga a instância)
        stream.Free; // libera memória (apaga a instância)
    except
        on e:exception do begin
          // caso dê algum erro ao carregar a imagem libera a memoria
          jpg.Free;
          stream.Free;

          // alerta o usuário sobre a mensagem de erro
          MessageBox(Application.Handle, Pchar(e.Message), Pchar('Falha ao carregar imagem do produto'),MB_OK+MB_ICONWARNING);
        end;
    end;
  end
  else    // se não houver foto cadastrada
    begin
      imProduto.Picture.Assign(nil); // apaga a imagem anterior
    end;

end;

procedure TfrmProdutoDados.imProdutoDblClick(Sender: TObject);
var
  jpg : TJPEGImage;
begin
  inherited;

  if odFoto.Execute then begin
  try
    ds.DataSet.Edit; // coloca a tabela em modo de edição (para salvar a foto no banco de dados)
    jpg := TJPEGImage.Create; // cria a instancia JPG
    dmCantina.ztbProdutop_foto.LoadFromFile(odFoto.FileName); // salva a imagem no banco de dados
    jpg.LoadFromFile(odFoto.FileName); // carrega a imagem na instancia JPG

    imProduto.Picture.Assign(jpg);  // assimila jpg para imProduto (mostra imagem no formulário)
    jpg.Free; // libera a memória JPG
  except
    on e:exception do
    begin
      jpg.Free;
      MessageBox(Application.Handle, pchar('É permitido apenas arquivos JPG para imagem.'), pchar('Falha ao carregar imagem do produto'), MB_OK+MB_ICONWARNING);
    end;
  end;
  end;

end;

end.
