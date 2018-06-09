unit ufrm_ticket_open;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_base_smp, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation,
  FMX.ListBox, FMX.ScrollBox, FMX.Memo, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ufrm_cm;

type
  Tfrm_ticket_open = class(Tfrm_base_smp)
    lyt_client_contract: TLayout;
    cmb_client_contract: TComboBox;
    lyt_ticket_category: TLayout;
    cmb_ticket_category: TComboBox;
    lyt_ticket_category_sub: TLayout;
    cmb_ticket_category_sub: TComboBox;
    lyt_ticket_reason: TLayout;
    memo_ticket_reason: TMemo;
    lbl_client_contract: TLabel;
    lbl_ticket_category: TLabel;
    lbl_ticket_category_sub: TLabel;
    lbl_ticket_reason: TLabel;
    btn_open: TButton;
    btn_post: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ticket_open: Tfrm_ticket_open;

implementation

{$R *.fmx}

procedure Tfrm_ticket_open.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ticket_open := Nil;
end;

end.
