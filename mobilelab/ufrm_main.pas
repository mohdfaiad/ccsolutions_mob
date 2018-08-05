unit ufrm_main;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.ImageList,
  System.Actions,

  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.ImgList,
  FMX.ActnList,
  FMX.ListBox,
  FMX.Objects,
  FMX.Layouts,
  FMX.MultiView,
  FMX.Controls.Presentation,

  {$IFDEF ANDROID}
    Androidapi.Jni.GraphicsContentViewText,
    Androidapi.Jni.Net,
    Androidapi.Jni.JavaTypes,
    Androidapi.Jni,
    Androidapi.JNIBridge,
    Androidapi.Helpers,
  {$ENDIF}

  idUri,

  class_rest_method,

  ufrm_main_base_laboratory,
  ufrm_login_lab, ufrm_enterprise,
  ufrm_exam,
  ufrm_insurance,
  ufrm_frame_progress,
  ufrm_contact;


type
  Tfrm_main = class(Tfrm_main_base_laboratory)
    procedure lbl_loginClick(Sender: TObject);
    procedure lbl_enterpriseClick(Sender: TObject);
    procedure lbl_insuranceClick(Sender: TObject);
    procedure lbl_examClick(Sender: TObject);
    procedure lbl_contactClick(Sender: TObject);
    procedure lbl_resultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowActivity;
    procedure HideActivity;
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

uses ufrm_login_base;

procedure Tfrm_main.lbl_contactClick(Sender: TObject);
{$IFDEF ANDROID}
  var
    openURL : JIntent;
{$ENDIF}
begin
  inherited;
  {$IFDEF ANDROID}
    try
      try
        openURL := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW);
        //openURL.setPackage(StringToJString('com.google.android.youtube'));
        openURL.setData(TJnet_Uri.JavaClass.parse(StringToJString(Trest_config.contact)));
        SharedActivity.startActivity(openURL);
      except on E: Exception do
        ShowMessage('Error: ' + E.Message);
      end;
    finally
    end;
  {$ENDIF}
end;

procedure Tfrm_main.lbl_enterpriseClick(Sender: TObject);
begin
  inherited;
  {$IFDEF WIN32}
    frm_enterprise := Tfrm_enterprise.Create(Self);
    frm_enterprise.Show;
  {$ENDIF}

  {$IFDEF WIN64}
    frm_enterprise := Tfrm_enterprise.Create(Self);
    frm_enterprise.Show;
  {$ENDIF}

  {$IFDEF MACOS}
    frm_enterprise := Tfrm_enterprise.Create(Self);
    frm_enterprise.Show;
  {$ENDIF}

  if not Assigned(frm_enterprise) then begin
    frm_enterprise := Tfrm_enterprise.Create(Self);
    frm_enterprise.Show;
  end else begin
    frm_enterprise.Show;
  end;
end;

procedure Tfrm_main.lbl_examClick(Sender: TObject);
begin
  inherited;
  {$IFDEF WIN32}
    frm_exam := Tfrm_exam.Create(Self);
    frm_exam.Show;
  {$ENDIF}

  {$IFDEF WIN64}
    frm_exam := Tfrm_exam.Create(Self);
    frm_exam.Show;
  {$ENDIF}

  {$IFDEF MACOS}
    frm_exam := Tfrm_exam.Create(Self);
    frm_exam.Show;
  {$ENDIF}

  if not Assigned(frm_exam) then begin
    frm_exam := Tfrm_exam.Create(Self);
    frm_exam.Show;
  end else begin
    frm_exam.Show;
  end;
end;

procedure Tfrm_main.lbl_insuranceClick(Sender: TObject);
begin
  inherited;
  {$IFDEF WIN32}
    frm_insurance := Tfrm_insurance.Create(Self);
    frm_insurance.Show;
  {$ENDIF}

  {$IFDEF WIN64}
    frm_insurance := Tfrm_insurance.Create(Self);
    frm_insurance.Show;
  {$ENDIF}

  {$IFDEF MACOS}
    frm_insurance := Tfrm_insurance.Create(Self);
    frm_insurance.Show;
  {$ENDIF}

  if not Assigned(frm_insurance) then begin
    frm_insurance := Tfrm_insurance.Create(Self);
    frm_insurance.Show;
  end else begin
    frm_insurance.Show;
  end;
end;

procedure Tfrm_main.lbl_loginClick(Sender: TObject);
begin
  inherited;
  {$IFDEF WIN32}
    frm_login_base := Tfrm_login_base.Create(Self);
    frm_login_base.Show;
  {$ENDIF}

  {$IFDEF WIN64}
    frm_login_base := Tfrm_login_base.Create(Self);
    frm_login_base.Show;
  {$ENDIF}

  {$IFDEF MACOS}
    frm_login_lab := Tfrm_login_lab.Create(Self);
    frm_login_lab.Show;
  {$ENDIF}

  if not Assigned(frm_login_lab) then begin
    frm_login_lab := Tfrm_login_lab.Create(Self);
    frm_login_lab.Show;
  end else begin
    frm_login_lab.Show;
  end;
end;

procedure Tfrm_main.lbl_resultClick(Sender: TObject);
{$IFDEF ANDROID}
  var
    openURL : JIntent;
{$ENDIF}
begin
  inherited;
  {$IFDEF ANDROID}
    try
      try
        openURL := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW);
        //openURL.setPackage(StringToJString('com.google.android.youtube'));
        openURL.setData(TJnet_Uri.JavaClass.parse(StringToJString('http://cdlaboratorio.dyndns.org:8081/')));
        SharedActivity.startActivity(openURL);
      except on E: Exception do
        ShowMessage('Error: ' + E.Message);
      end;
    finally
    end;
  {$ENDIF}
end;

procedure Tfrm_main.ShowActivity;
begin
//  mtv_menu.Enabled := False;
//  frm_frame_progress.ShowActivity;
end;

procedure Tfrm_main.HideActivity;
begin
//  frm_frame_progress.HideActivity;
//  mtv_menu.Enabled := True;
end;

end.
