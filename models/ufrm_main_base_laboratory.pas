unit ufrm_main_base_laboratory;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_main_base, System.ImageList, FMX.ImgList, System.Actions,
  FMX.ActnList, FMX.Objects, FMX.Layouts, FMX.ListBox, FMX.MultiView, FMX.Controls.Presentation, ufrm_login_lab;

type
  Tfrm_main_base_laboratory = class(Tfrm_main_base)
    lbgh_patient: TListBoxGroupHeader;
    lbi_result: TListBoxItem;
    lbi_exam: TListBoxItem;
    lbi_insurance: TListBoxItem;
    lbgh_doctor: TListBoxGroupHeader;
    lbi_table_cid: TListBoxItem;
    lbgh_contact: TListBoxGroupHeader;
    lbgh_setting: TListBoxGroupHeader;
    lbi_contact: TListBoxItem;
    lbi_enterprise: TListBoxItem;
    lbi_parameter: TListBoxItem;
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
