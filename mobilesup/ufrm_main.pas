unit ufrm_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_main_base_support, System.ImageList, FMX.ImgList, System.Actions,
  FMX.ActnList, FMX.ListBox, FMX.Objects, FMX.Layouts, FMX.MultiView, FMX.Controls.Presentation, ufrm_ticket_open, ufrm_login_client;

type
  Tfrm_main = class(Tfrm_main_base_support)
    procedure lbi_tick_openClick(Sender: TObject);
    procedure lbl_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

procedure Tfrm_main.lbi_tick_openClick(Sender: TObject);
begin
  inherited;
   if not Assigned(frm_ticket_open) then begin
      frm_ticket_open := Tfrm_ticket_open.Create(Self);
      frm_ticket_open.Show;
   end else begin
      frm_ticket_open.Show;
   end;
end;

procedure Tfrm_main.lbl_loginClick(Sender: TObject);
begin
  inherited;
  {$IFDEF WIN32}
    frm_login_client := Tfrm_login_client.Create(Self);
    frm_login_client.ShowModal;
  {$ENDIF}

  {$IFDEF WIN64}
    frm_login_client := Tfrm_login_client.Create(Self);
    frm_login_client.ShowModal;
  {$ENDIF}

  {$IFDEF MACOS}
    frm_login_client := Tfrm_login_client.Create(Self);
    frm_login_client.ShowModal;
  {$ENDIF}

    if not Assigned(frm_login_client) then begin
      frm_login_client := Tfrm_login_client.Create(Self);
      frm_login_client.Show;
    end else begin
      frm_login_client.Show;
    end;
end;

end.
