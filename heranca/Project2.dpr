program Project2;

uses
  Forms,
  uPrincipal in '..\uPrincipal.pas' {frmPrincipal},
  uCadCategoria in '..\cadastro\uCadCategoria.pas' {frmCadCategoria},
  uDTMConexao in '..\datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  Enter in '..\terceiros\Enter.pas',
  uTelaHeranca in 'uTelaHeranca.pas' {frmTelaHeranca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTelaHeranca, frmTelaHeranca);
  Application.Run;
end.
