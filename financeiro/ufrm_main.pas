unit ufrm_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  ufrm_main_default, System.Actions, FMX.ActnList, System.ImageList,
  FMX.ImgList, FMX.Menus, FMX.Controls.Presentation;

type
  Tfrm_main = class(Tfrm_main_default)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

end.
