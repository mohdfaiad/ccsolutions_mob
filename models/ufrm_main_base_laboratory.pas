unit ufrm_main_base_laboratory;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_main_base, System.ImageList, FMX.ImgList, System.Actions,
  FMX.ActnList, FMX.Objects, FMX.Layouts, FMX.ListBox, FMX.MultiView, FMX.Controls.Presentation, ufrm_login_lab;

type
  Tfrm_main_base_laboratory = class(Tfrm_main_base)
    lyt_parameter: TLayout;
    lytgrdpnl_parameter: TGridPanelLayout;
    lbl_parameter: TLabel;
    lyt_result: TLayout;
    lytgrdpnl_result: TGridPanelLayout;
    lyt_setting: TLayout;
    lytgrdpnl_setting: TGridPanelLayout;
    lbl_setting: TLabel;
    lyt_enterprise: TLayout;
    lytgrdpnl_enterprise: TGridPanelLayout;
    lbl_enterprise: TLabel;
    lyt_contact: TLayout;
    lytgrdpnl_contact: TGridPanelLayout;
    lbl_contact: TLabel;
    lyt_table_cid: TLayout;
    lytgrdpnl_table_cid: TGridPanelLayout;
    lbl_table_cid: TLabel;
    lyt_attendance: TLayout;
    lytgrdpnl_attendance: TGridPanelLayout;
    lbl_attendance: TLabel;
    lyt_doctor: TLayout;
    lytgrdpnl_doctor: TGridPanelLayout;
    lbl_doctor: TLabel;
    lyt_insurance: TLayout;
    lytgrdpnl_insurance: TGridPanelLayout;
    lbl_insurance: TLabel;
    lyt_exam: TLayout;
    lytgrdpnl_exam: TGridPanelLayout;
    lbl_exam: TLabel;
    lyt_patient: TLayout;
    lytgrdpnl_patient: TGridPanelLayout;
    lbl_patient: TLabel;
    gly_doctor: TGlyph;
    gly_attendance: TGlyph;
    gly_setting: TGlyph;
    gly_patient: TGlyph;
    lbl_result: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main_base_laboratory: Tfrm_main_base_laboratory;

implementation

{$R *.fmx}

end.
