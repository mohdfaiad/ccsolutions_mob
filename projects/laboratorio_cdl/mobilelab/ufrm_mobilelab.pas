unit ufrm_mobilelab;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs;

type
  Tfrm_mobilelab = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    const
      Fcontract_ctr_cod = '478E87AD8E1711E8917A000C299237FC';
  end;

var
  frm_mobilelab: Tfrm_mobilelab;

implementation

{$R *.fmx}

end.
