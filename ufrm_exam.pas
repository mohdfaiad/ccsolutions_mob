unit ufrm_exam;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_base_pgc, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.Layouts, FMX.ListView, FMX.Objects, FMX.Controls.Presentation, FMX.TabControl, MultiDetailAppearanceU, FMX.Edit,
  class_rest_method, ufrm_dm_rest, ufrm_dm, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, System.Actions, FMX.ActnList, System.ImageList, FMX.ImgList, FMX.Effects;

type
  Tfrm_exam = class(Tfrm_base_pgc)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
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
  Trest_config.v_method := 'get_exam';
  Trest_config.v_parameter := Trest_config.contract_ctr_cod;
  Trest_config.v_root_element := 'exam';

  frm_dm_rest.get_exam_mobile;
end;

end.
