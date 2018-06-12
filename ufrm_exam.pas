unit ufrm_exam;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_base_pgc, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.Layouts, FMX.ListView, FMX.Objects, FMX.Controls.Presentation, FMX.TabControl, MultiDetailAppearanceU, FMX.Edit,
  class_rest_method, ufrm_dm_rest, ufrm_dm, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, System.Actions, FMX.ActnList, System.ImageList, FMX.ImgList, FMX.Effects, FMX.ScrollBox, FMX.Memo;

type
  Tfrm_exam = class(Tfrm_base_pgc)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    lyt_name: TLayout;
    lyt_initials: TLayout;
    lyt_gender: TLayout;
    lyt_description: TLayout;
    lbl_name: TLabel;
    lbl_initials: TLabel;
    lbl_description: TLabel;
    lbl_gender: TLabel;
    edt_name: TEdit;
    edt_initials: TEdit;
    edt_gender: TEdit;
    mem_description: TMemo;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_exam: Tfrm_exam;

implementation

{$R *.fmx}

procedure Tfrm_exam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_exam := Nil;
end;

procedure Tfrm_exam.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_config.v_method := 'get_product';
  Trest_config.v_parameter := Trest_config.contract_ctr_cod;
  Trest_config.v_root_element := 'product';

  frm_dm_rest.get_exam_mobile;

  {$IFDEF WIN32}
    edt_name.Margins.Top := 25;
    edt_initials.Margins.Top := 25;
    edt_gender.Margins.Top := 25;
    mem_description.Margins.Top := 25;
  {$ENDIF}

  {$IFDEF WIN64}
    edt_name.Margins.Top := 25;
    edt_initials.Margins.Top := 25;
    edt_gender.Margins.Top := 25;
    mem_description.Margins.Top := 25;
  {$ENDIF}

  {$IFDEF MACOS}
    edt_name.Margins.Top := 25;
    edt_initials.Margins.Top := 25;
    edt_gender.Margins.Top := 25;
    mem_description.Margins.Top := 25;
  {$ENDIF}
end;

end.
