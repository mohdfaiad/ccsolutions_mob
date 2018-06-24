unit ufrm_splash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, ufrm_main;

type
  Tfrm_splash = class(TForm)
    rct_splash: TRectangle;
    img_splash: TImage;
    timer_splash: TTimer;
    procedure timer_splashTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure img_splashPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
  private
    { Private declarations }
    FInitialized: Boolean;
  public
    { Public declarations }
    procedure LoadMainForm;
  end;

var
  frm_splash: Tfrm_splash;

implementation

{$R *.fmx}

procedure Tfrm_splash.FormCreate(Sender: TObject);
begin
  timer_splash.Enabled  := False;
  timer_splash.Interval := 2000;
end;

procedure Tfrm_splash.img_splashPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  timer_splash.Enabled := not FInitialized;
end;

procedure Tfrm_splash.LoadMainForm;
var
  frm : TForm;
begin
  frm := Tfrm_main.Create(Application);
  frm.Show;
  Application.MainForm := frm;
  Close;
end;

procedure Tfrm_splash.timer_splashTimer(Sender: TObject);
begin
  timer_splash.Enabled := False;
  if not FInitialized then begin
    FInitialized := True;
    LoadMainForm;
  end;
end;

end.
