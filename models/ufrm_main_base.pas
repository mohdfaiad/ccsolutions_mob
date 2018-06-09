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
    actlistMenu: TActionList;
    imglistMenu: TImageList;
    lsbox_menu: TListBox;
    rct_menu_botton: TRectangle;
    lyt_main: TLayout;
    toolbar_top: TToolBar;
    toolbar_botton: TToolBar;
    btn_menu: TButton;
    lbi_profile: TListBoxItem;
    rct_profile: TRectangle;
    lyt_center: TLayout;
    gly_center: TGlyph;
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
