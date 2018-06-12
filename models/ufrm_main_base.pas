unit ufrm_main_base;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.Controls.Presentation, FMX.MultiView, FMX.Objects, System.ImageList,
  FMX.ImgList, System.Actions, FMX.ActnList, FMX.ListBox, FMX.StdCtrls;

type
  Tfrm_main_base = class(TForm)
    mtv_menu: TMultiView;
    rct_menu: TRectangle;
    actlist_menu: TActionList;
    imglist_menu: TImageList;
    rct_menu_botton: TRectangle;
    lyt_main: TLayout;
    btn_menu: TButton;
    rct_profile: TRectangle;
    lyt_center: TLayout;
    line_profile: TLine;
    crc_photograph: TCircle;
    lyt_profile: TLayout;
    lyt_profile_photograph: TLayout;
    lytgrdpnl_name_email: TGridPanelLayout;
    lbl_fist_last_name: TLabel;
    lbl_email: TLabel;
    line_menu_botton: TLine;
    rct_login: TRectangle;
    lbl_login: TLabel;
    rct_main_top: TRectangle;
    rct_main_button: TRectangle;
    rct_main_center: TRectangle;
    vsb_menu: TVertScrollBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main_base: Tfrm_main_base;

implementation

{$R *.fmx}

procedure Tfrm_main_base.FormCreate(Sender: TObject);

begin
  {$IFDEF ANDROID}
    with mtv_menu do
    begin
      Mode := TMultiViewMode.Drawer;
      Width := 350;
    end;
  {$ENDIF}

  {$IFDEF IOS}
    with mtv_menu do
    begin
      Mode := TMultiViewMode.Drawer;
      Width := 350;
    end;
  {$ENDIF}

  {$IFDEF IOS32}
    with mtv_menu do
    begin
      Mode := TMultiViewMode.Drawer;
      Width := 350;
    end;
  {$ENDIF}

  {$IFDEF IOS64}
    with mtv_menu do
    begin
      Mode := TMultiViewMode.Drawer;
      Width := 350;
    end;
  {$ENDIF}
end;

end.
