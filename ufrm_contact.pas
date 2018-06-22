unit ufrm_contact;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_base_smp, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, MultiDetailAppearanceU, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList, FMX.TabControl, FMX.Layouts,
  FMX.Effects, FMX.Controls.Presentation, FMX.ListView, FMX.Objects, FMX.WebBrowser, class_rest_method;

type
  Tfrm_contact = class(Tfrm_base_smp)
    webb_main: TWebBrowser;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_contact: Tfrm_contact;

implementation

{$R *.fmx}

end.
