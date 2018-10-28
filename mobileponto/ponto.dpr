program ponto;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrm_ponto in 'ufrm_ponto.pas' {frm_ponto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_ponto, frm_ponto);
  Application.Run;
end.
