unit ufrm_main_base_support;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_main_base, System.ImageList, FMX.ImgList, System.Actions,
  FMX.ActnList, FMX.Objects, FMX.Layouts, FMX.ListBox, FMX.MultiView, FMX.Controls.Presentation;

type
  Tfrm_main_base_support = class(Tfrm_main_base)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main_base_support: Tfrm_main_base_support;

implementation

{$R *.fmx}

end.
