unit ufrm_insurance;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_base_pgc, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.Layouts, FMX.ListView, FMX.Objects, FMX.Controls.Presentation, FMX.TabControl, MultiDetailAppearanceU, FMX.Edit,
  class_rest_method, ufrm_dm_rest, ufrm_dm, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, System.Actions, FMX.ActnList, System.ImageList, FMX.ImgList, FMX.Effects;

type
  Tfrm_insurance = class(Tfrm_base_pgc)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lsv_recordItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_insurance: Tfrm_insurance;

implementation

{$R *.fmx}

procedure Tfrm_insurance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_insurance := Nil;
end;

procedure Tfrm_insurance.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_config.v_method := 'get_insurance';
  Trest_config.v_parameter := Trest_config.contract_ctr_cod;
  Trest_config.v_root_element := 'insurance';

  frm_dm_rest.get_insurance_mobile;
end;

procedure Tfrm_insurance.lsv_recordItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
//  inherited;

end;

end.
