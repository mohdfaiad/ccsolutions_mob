unit ufrm_frame_progress;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Ani, FMX.Objects;

type
  Tfrm_frame_progress = class(TFrame)
    rct_progress: TRectangle;
    crc_1: TCircle;
    crc_center: TCircle;
    arc_progress: TArc;
    floatanim_1: TFloatAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowActivity;
    procedure HideActivity;
  end;

implementation

{$R *.fmx}

{ Tfrm_frame_progress }

procedure Tfrm_frame_progress.HideActivity;
begin
  floatanim_1.Enabled := False;
  Self.Visible := False;
end;

procedure Tfrm_frame_progress.ShowActivity;
begin
  Self.Visible := True;
  floatanim_1.Enabled := True;
end;

end.
