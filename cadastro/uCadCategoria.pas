unit uCadCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTelaHeranca, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, cCadCategoria, uDTMConexao, uEnum;

type
  TfrmCadCategoria = class(TfrmTelaHeranca)
    QryListagemID: TIntegerField;
    QryListagemDESCRICAO: TWideStringField;
    edtCategoriaID: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    oCategoria:TCategoria;
    function Excluir:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}

procedure TfrmCadCategoria.btnFecharClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TfrmCadCategoria.btnGravarClick(Sender: TObject);
begin
  if edtDescricao.Text ='' then        //'' poderia ter sido trocado por EmptyStrting
    begin
      ShowMessage('Campo obrigatório');
      edtDescricao.SetFocus;
      Abort;
    end;
    oCategoria.categoriaID := 100;
    oCategoria.descricao := 'Teste';

    ShowMessage(oCategoria.descricao);
  inherited;
end;

procedure TfrmCadCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oCategoria) then
     FreeAndNil(oCategoria);
end;

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited;
  oCategoria:=TCategoria.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual:='descricao';
end;
{$region 'override'}
function TfrmCadCategoria.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if (EstadoDoCadastro = ecInserir) then
    Result := oCategoria.Gravar
  else if (EstadoDoCadastro = ecAlterar) then
    Result := oCategoria.Atualizar;
end;

function TfrmCadCategoria.Excluir: Boolean;
begin
  Result:= oCategoria.Apagar;
end;
{$endregion}
end.
