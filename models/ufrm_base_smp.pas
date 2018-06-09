unit ufrm_base_smp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts, FMX.Objects;

type
  Tfrm_base_smp = class(TForm)
    toolbar_top: TToolBar;
    btn_menu: TButton;
    lbl_form: TLabel;
    toolbar_botton: TToolBar;
    lyt_center: TLayout;
    rtg_center: TRectangle;
    vsb_center: TVertScrollBox;
    rct_top: TRectangle;
    rct_botton: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure btn_menuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_base_smp: Tfrm_base_smp;

implementation

{$R *.fmx}

procedure Tfrm_base_smp.btn_menuClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_base_smp.FormShow(Sender: TObject);
begin
  lbl_form.Text := Caption;
end;

end.
