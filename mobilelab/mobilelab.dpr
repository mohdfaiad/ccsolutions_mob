program mobilelab;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrm_mobilelab in 'ufrm_mobilelab.pas' {frm_mobilelab},
  ufrm_cm in '..\ufrm_cm.pas' {frm_cm: TDataModule},
  ufrm_base_pgc in '..\models\ufrm_base_pgc.pas' {frm_base_pgc},
  ufrm_base_smp in '..\models\ufrm_base_smp.pas' {frm_base_smp},
  ufrm_main_base in '..\models\ufrm_main_base.pas' {frm_main_base},
  ufrm_login_base in '..\models\ufrm_login_base.pas' {frm_login_base},
  ufrm_exam in '..\ufrm_exam.pas' {frm_exam},
  ufrm_insurance in '..\ufrm_insurance.pas' {frm_insurance},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_main_base_laboratory in '..\models\ufrm_main_base_laboratory.pas' {frm_main_base_laboratory},
  ufrm_cc in '..\ufrm_cc.pas',
  ufrm_dm_rest in '..\ufrm_dm_rest.pas' {frm_dm_rest: TDataModule},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  class_rest_param_contract in '..\class_rest_param_contract.pas',
  class_rest_method in '..\class_rest_method.pas',
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_login_lab in '..\ufrm_login_lab.pas' {frm_login_lab};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_cm, frm_cm);
  Application.CreateForm(Tfrm_dm_rest, frm_dm_rest);
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
