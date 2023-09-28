program Vendas;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTelaHeranca},
  Enter in 'terceiros\Enter.pas',
  uCadCategoria in 'cadastro\uCadCategoria.pas' {frmCadCategoria},
  uEnum in 'heranca\uEnum.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTelaHeranca, frmTelaHeranca);
  Application.CreateForm(TfrmCadCategoria, frmCadCategoria);
  Application.Run;
end.
