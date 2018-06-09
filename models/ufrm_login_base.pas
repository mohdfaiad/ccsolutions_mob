unit ufrm_login_base;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, System.ImageList,
  FMX.ImgList, System.Actions, FMX.ActnList, System.JSON, ufrm_cm, System.JSON.Readers, System.JSON.Types, FMX.Objects;

type
  Tfrm_login_base = class(TForm)
    actlist_1: TActionList;
    imglist_1: TImageList;
    Action_signin: TAction;
    lytLogin: TLayout;
    lytgridpnl_login: TGridPanelLayout;
    gly_logo: TGlyph;
    Action_siginup: TAction;
    rec_login_type: TRectangle;
    rec_login: TRectangle;
    rec_login_edt_login: TRectangle;
    rec_login_edt_password: TRectangle;
    rec_login_btn_signin: TRectangle;
    rec_login_btn_signup: TRectangle;
    edt_username: TEdit;
    edt_password: TEdit;
    lbl_signin: TLabel;
    lbl_signup: TLabel;
    procedure Action_signinExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login_base: Tfrm_login_base;

implementation

{$R *.fmx}

procedure Tfrm_login_base.Action_signinExecute(Sender: TObject);
var
  lResult, sResult, sMessage : string;
  lStrReader: TStringReader;
  lJsonReader: TJsonTextReader;
begin
  if edt_username.Text.Equals(EmptyStr) then begin
    ShowMessage('Usuário Obrigatório!');
    edt_username.SetFocus;
    Exit
  end else if edt_password.Text.Equals(EmptyStr) then begin
    ShowMessage('Senha Obrigatório!');
    edt_password.SetFocus;
    Exit
  end;

  lResult := frm_cm.srv_methodsClient.user_authentication(edt_username.Text, edt_password.Text);

  lStrReader := TStringReader.Create(lResult);
  lJsonReader := TJsonTextReader.Create(lStrReader);
  try
    try
      while lJsonReader.Read do
      begin
        if lJsonReader.Path = 'result' then begin
          sResult := lJsonReader.Value.ToString
        end else if lJsonReader.Path = 'message' then begin
          sMessage := lJsonReader.Value.ToString;
        end;
      end;
    finally
      lJsonReader.Free;
    end;
  finally
    lStrReader.Free;
  end;

  if sResult.Equals('success') then
  begin
    ShowMessage('Usuário Ok!');
  end else begin
    ShowMessage(sMessage);
  end;
end;

procedure Tfrm_login_base.FormCreate(Sender: TObject);
begin
  {$IFDEF WIN32}
    Self.WindowState := TWindowState.wsNormal;
    Self.Height := 480;
    Self.Width := 640;
  {$ENDIF}

  {$IFDEF MACOS}
    Self.WindowState := TWindowState.wsNormal;
    Self.Height := 480;
    Self.Width := 640;
  {$ENDIF}
end;

end.
