unit cCadCategoria;

  interface

uses Classes,
     Controls,
     ExtCtrls,
     Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     SysUtils;


type
   TCategoria = class
    Private
    ConexaoDB: TZConnection;

    F_categoriaID : Integer;
    F_descricao : string;

    function getCategoriaID: Integer;
    function getDEscricao: string;
    procedure setCategoriaID(const Value: Integer);
    procedure setDescricao(const Value: string);

    Public
      constructor Create(aConexao:TZConnection);
      destructor Destroy; override;
      function Gravar:Boolean;
      function Atualizar:Boolean;
      function Apagar:Boolean;
      function Selecionar(id:integer):Boolean;
    published
      property categoriaID : Integer read getCategoriaID write setCategoriaID;
      property descricao : string read getDEscricao write setDescricao;
    end;

implementation

{ TCategoria }
  {$region 'constructor e desctructor'}
constructor TCategoria.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao
end;

destructor TCategoria.Destroy;
begin

  inherited;
end;
 {$endregion}

{$region 'crud'}
function TCategoria.Apagar: Boolean;
begin
  ShowMessage('Apagado');
  Result := True;
end;

function TCategoria.Atualizar: Boolean;
begin
  ShowMessage('Atualizado');
  Result := True;
end;

function TCategoria.Gravar: Boolean;
begin
   ShowMessage('Gravado');
  Result := True;
end;

function TCategoria.Selecionar(id: integer): Boolean;
begin
  Result := True;
end;
{$endregion}

{$region 'gets'}
function TCategoria.getCategoriaID: Integer;
begin
  Result := Self.F_categoriaID;
end;

function TCategoria.getDEscricao: string;
begin
  Result := Self.F_descricao
end;
{$endregion}

{$region 'sets'}
procedure TCategoria.setCategoriaID(const Value: Integer);
begin
   Self.F_categoriaID := Value;
end;

procedure TCategoria.setDescricao(const Value: string);
begin
  Self.F_descricao := Value;
end;
{$endregion}
end.