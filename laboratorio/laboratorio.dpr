program laboratorio;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrm_laboratorio in 'ufrm_laboratorio.pas' {frm_laboratorio},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_laboratorio, frm_laboratorio);
  Application.CreateForm(Tfrm_main_default, frm_main_default);
  Application.CreateForm(Tfrm_form_default, frm_form_default);
  Application.Run;
end.
