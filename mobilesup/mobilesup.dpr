program mobilesup;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrm_mobilesup in 'ufrm_mobilesup.pas' {frm_mobilesup},
  ufrm_main_base in '..\models\ufrm_main_base.pas' {frm_main_base},
  ufrm_base_pgc in '..\models\ufrm_base_pgc.pas' {frm_base_pgc},
  ufrm_login_client in '..\ufrm_login_client.pas' {frm_login_client},
  ufrm_cc in '..\ufrm_cc.pas',
  ufrm_cm in '..\ufrm_cm.pas' {frm_cm: TDataModule},
  ufrm_base_smp in '..\models\ufrm_base_smp.pas' {frm_base_smp},
  ufrm_ticket_open in '..\ufrm_ticket_open.pas' {frm_ticket_open},
  ufrm_main_base_support in '..\models\ufrm_main_base_support.pas' {frm_main_base_support},
  ufrm_main in 'ufrm_main.pas' {frm_main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_cm, frm_cm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
