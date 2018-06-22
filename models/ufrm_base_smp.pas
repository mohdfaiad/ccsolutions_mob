unit ufrm_base_smp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts, FMX.Objects,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, MultiDetailAppearanceU, System.ImageList, FMX.ImgList, System.Actions,
  FMX.ActnList, FMX.TabControl, FMX.Effects, FMX.ListView, FMX.WebBrowser;

type
  Tfrm_base_smp = class(TForm)
    lyt_form: TLayout;
    tbctrl_1: TTabControl;
    tbitm_record: TTabItem;
    rec_record: TRectangle;
    rct_record_top: TRectangle;
    lbl_record: TLabel;
    btn_close_record: TButton;
    shw_record_top: TShadowEffect;
    tbitm_data: TTabItem;
    rec_data: TRectangle;
    vsb_data: TVertScrollBox;
    rct_data_top: TRectangle;
    lbl_data_top: TLabel;
    btn_close_data: TButton;
    shw_data_top: TShadowEffect;
    actlist_1: TActionList;
    ChangeTabAction_data: TChangeTabAction;
    ChangeTabAction_record: TChangeTabAction;
    imglist_1: TImageList;
    procedure btn_menuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_close_recordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_base_smp: Tfrm_base_smp;

implementation

{$R *.fmx}

procedure Tfrm_base_smp.btn_close_recordClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_base_smp.btn_menuClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_base_smp.FormCreate(Sender: TObject);
begin
  lbl_record.Text := Self.Caption;
  lbl_data_top.Text := Self.Caption;
end;

end.
