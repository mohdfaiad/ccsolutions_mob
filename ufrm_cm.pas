unit ufrm_cm;

interface

uses
  System.SysUtils, System.Classes, ufrm_cc, Datasnap.DSClientRest, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IPPeerClient, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  Tfrm_cm = class(TDataModule)
    restconn: TDSRestConnection;
    mem_client_contract: TFDMemTable;
    mem_ticket_category_sub: TFDMemTable;
    mem_ticket_category: TFDMemTable;
    mem_ticket: TFDMemTable;
  private
    FInstanceOwner: Boolean;
    FmethodsClient: methodsClient;
    function Getsrv_methodsClient: methodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property srv_methodsClient: methodsClient read Getsrv_methodsClient
      write FmethodsClient;

  end;

var
  frm_cm: Tfrm_cm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

constructor Tfrm_cm.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor Tfrm_cm.Destroy;
begin
  FmethodsClient.Free;
  inherited;
end;

function Tfrm_cm.Getsrv_methodsClient: methodsClient;
begin
  if FmethodsClient = nil then
    FmethodsClient := methodsClient.Create(restconn,
      FInstanceOwner);
  Result := FmethodsClient;
end;

end.
