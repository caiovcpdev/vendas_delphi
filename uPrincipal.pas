unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,uDTMConexao, uCadCategoria, Enter;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    N3: TMenuItem;
    Produto2: TMenuItem;
    VendaporData1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter : TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
     frmCadCategoria:=TfrmCadCategoria.Create(Self);
     frmCadCategoria.ShowModal;
     frmCadCategoria.Release;
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(TeclaEnter);
 FreeAndNil(dtmPrincipal);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
    dtmPrincipal := TdtmPrincipal.Create(Self);
    with dtmPrincipal.ConexaoDB do
    begin
       SQLHourGlass:= True;
       Protocol := 'mssql';
       LibraryLocation := 'C:\Users\caio\Desktop\Projeto_delphi_caio\ntwdblib.dll';
       HostName := 'grprodev.gruporecursos.intranet\sql001,1433';
       User :=  'sa';
       Password := '237recursos2211';
       Database := 'VENDAS_CAIO';
       Connected := True;
    end;
    TeclaEnter := TMREnter.Create(Self);
    TeclaEnter.FocusEnabled:= True;
    TeclaEnter.FocusColor:= clInfoBk
end;

end.
