unit ufrm_base_pgc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.Layouts, FMX.ListBox, FMX.Objects, FMX.Edit, MultiDetailAppearanceU, FMX.Ani,
  FMX.Effects, System.Actions, FMX.ActnList, System.ImageList, FMX.ImgList;

type
  Tfrm_base_pgc = class(TForm)
    tbctrl_1: TTabControl;
    tbitm_record: TTabItem;
    tbitm_data: TTabItem;
    lyt_form: TLayout;
    lbl_record: TLabel;
    btn_close_data: TButton;
    lbl_data_top: TLabel;
    vsb_data: TVertScrollBox;
    lsv_record: TListView;
    edt_search: TEdit;
    btnedt_search: TSearchEditButton;
    lyt_record: TLayout;
    shw_record_top: TShadowEffect;
    shw_data_top: TShadowEffect;
    btn_close_record: TButton;
    actlist_1: TActionList;
    imglist_1: TImageList;
    ChangeTabAction_data: TChangeTabAction;
    ChangeTabAction_record: TChangeTabAction;
    rec_record: TRectangle;
    rec_data: TRectangle;
    rct_record_top: TRectangle;
    rct_data_top: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure btn_close_dataClick(Sender: TObject);
    procedure btn_close_recordClick(Sender: TObject);
    procedure lsv_recordItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_base_pgc: Tfrm_base_pgc;

implementation

{$R *.fmx}

procedure Tfrm_base_pgc.btn_close_dataClick(Sender: TObject);
begin
  ChangeTabAction_record.Execute;
end;

procedure Tfrm_base_pgc.btn_close_recordClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_base_pgc.FormCreate(Sender: TObject);
begin
  lbl_record.Text := Self.Caption;
  lbl_data_top.Text := Self.Caption;
end;

procedure Tfrm_base_pgc.lsv_recordItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  ChangeTabAction_data.Execute;
end;

end.
