unit ufrm_enterprise;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.Rtti,
  System.Bindings.Outputs,
  System.Actions,
  System.ImageList,

  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.Layouts,
  FMX.ListView,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.TabControl,
  FMX.Edit,
  FMX.Bind.Editors,
  FMX.Bind.DBEngExt,
  FMX.Effects,
  FMX.ActnList,
  FMX.ImgList,
  FMX.Maps,
  FMX.ScrollBox,
  FMX.Memo,

  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope,

  MultiDetailAppearanceU,

  class_rest_method,

  ufrm_dm_rest,
  ufrm_base_pgc;

type
  Tfrm_enterprise = class(Tfrm_base_pgc)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    lyt_address: TLayout;
    lyt_name: TLayout;
    lbl_param_address: TLabel;
    lbl_nickname: TLabel;
    edt_nickname: TEdit;
    LinkControlToField1: TLinkControlToField;
    mem_address: TMemo;
    LinkControlToField2: TLinkControlToField;
    lyt_phone: TLayout;
    lbl_address: TLabel;
    edt_phone: TEdit;
    LinkControlToField3: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_enterprise: Tfrm_enterprise;

implementation

{$R *.fmx}

procedure Tfrm_enterprise.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_config.v_method := 'get_enterprise';
  Trest_config.v_parameter := Trest_config.contract_ctr_cod;
  Trest_config.v_root_element := 'enterprise';

  frm_dm_rest.get_enterprise_mobile;

  {$IFDEF WIN32}
    edt_nickname.Margins.Top := 25;
    mem_address.Margins.Top := 25;
    edt_phone.Margins.Top := 25;
  {$ENDIF}

  {$IFDEF WIN64}
    edt_nickname.Margins.Top := 25;
    mem_address.Margins.Top := 25;
    edt_phone.Margins.Top := 25;
  {$ENDIF}

  {$IFDEF MACOS}
    edt_nickname.Margins.Top := 25;
    mem_address.Margins.Top := 25;
    edt_phone.Margins.Top := 25;
  {$ENDIF}
end;

end.
