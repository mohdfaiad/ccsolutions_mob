unit ufrm_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, ufrm_main_base_laboratory, System.ImageList, FMX.ImgList,
  System.Actions, FMX.ActnList, FMX.ListBox, FMX.Objects, FMX.Layouts, FMX.MultiView, FMX.Controls.Presentation, ufrm_login_lab, ufrm_enterprise,
  ufrm_exam, ufrm_insurance;

type
  Tfrm_main = class(Tfrm_main_base_laboratory)
    procedure lbl_loginClick(Sender: TObject);
    procedure lbl_enterpriseClick(Sender: TObject);
    procedure lbl_insuranceClick(Sender: TObject);
    procedure lbl_examClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

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
    frm_login_lab := Tfrm_login_lab.Create(Self);
    frm_login_lab.Show;
  {$ENDIF}

  {$IFDEF WIN64}
    frm_login_lab := Tfrm_login_lab.Create(Self);
    frm_login_lab.Show;
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

end.
