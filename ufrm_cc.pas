//
// Created by the DataSnap proxy generator.
// 07/06/2018 17:13:04
//

unit ufrm_cc;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  methodsClient = class(TDSAdminRestClient)
  private
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    Fuser_authenticationCommand: TDSRestCommand;
    Fget_enterpriseCommand: TDSRestCommand;
    Fget_productCommand: TDSRestCommand;
    Fget_insuranceCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function user_authentication(username: string; password: string; const ARequestFilter: string = ''): string;
    function get_enterprise(contract_ctr_cod: string; const ARequestFilter: string = ''): string;
    function get_product(contract_ctr_cod: string; const ARequestFilter: string = ''): string;
    function get_insurance(contract_ctr_cod: string; const ARequestFilter: string = ''): string;
  end;

const
  methods_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_user_authentication: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'username'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'password'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_get_enterprise: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'contract_ctr_cod'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_get_product: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'contract_ctr_cod'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_get_insurance: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'contract_ctr_cod'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

implementation

function methodsClient.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'methods.EchoString';
    FEchoStringCommand.Prepare(methods_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function methodsClient.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'methods.ReverseString';
    FReverseStringCommand.Prepare(methods_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function methodsClient.user_authentication(username: string; password: string; const ARequestFilter: string): string;
begin
  if Fuser_authenticationCommand = nil then
  begin
    Fuser_authenticationCommand := FConnection.CreateCommand;
    Fuser_authenticationCommand.RequestType := 'GET';
    Fuser_authenticationCommand.Text := 'methods.user_authentication';
    Fuser_authenticationCommand.Prepare(methods_user_authentication);
  end;
  Fuser_authenticationCommand.Parameters[0].Value.SetWideString(username);
  Fuser_authenticationCommand.Parameters[1].Value.SetWideString(password);
  Fuser_authenticationCommand.Execute(ARequestFilter);
  Result := Fuser_authenticationCommand.Parameters[2].Value.GetWideString;
end;

function methodsClient.get_enterprise(contract_ctr_cod: string; const ARequestFilter: string): string;
begin
  if Fget_enterpriseCommand = nil then
  begin
    Fget_enterpriseCommand := FConnection.CreateCommand;
    Fget_enterpriseCommand.RequestType := 'GET';
    Fget_enterpriseCommand.Text := 'methods.get_enterprise';
    Fget_enterpriseCommand.Prepare(methods_get_enterprise);
  end;
  Fget_enterpriseCommand.Parameters[0].Value.SetWideString(contract_ctr_cod);
  Fget_enterpriseCommand.Execute(ARequestFilter);
  Result := Fget_enterpriseCommand.Parameters[1].Value.GetWideString;
end;

function methodsClient.get_product(contract_ctr_cod: string; const ARequestFilter: string): string;
begin
  if Fget_productCommand = nil then
  begin
    Fget_productCommand := FConnection.CreateCommand;
    Fget_productCommand.RequestType := 'GET';
    Fget_productCommand.Text := 'methods.get_product';
    Fget_productCommand.Prepare(methods_get_product);
  end;
  Fget_productCommand.Parameters[0].Value.SetWideString(contract_ctr_cod);
  Fget_productCommand.Execute(ARequestFilter);
  Result := Fget_productCommand.Parameters[1].Value.GetWideString;
end;

function methodsClient.get_insurance(contract_ctr_cod: string; const ARequestFilter: string): string;
begin
  if Fget_insuranceCommand = nil then
  begin
    Fget_insuranceCommand := FConnection.CreateCommand;
    Fget_insuranceCommand.RequestType := 'GET';
    Fget_insuranceCommand.Text := 'methods.get_insurance';
    Fget_insuranceCommand.Prepare(methods_get_insurance);
  end;
  Fget_insuranceCommand.Parameters[0].Value.SetWideString(contract_ctr_cod);
  Fget_insuranceCommand.Execute(ARequestFilter);
  Result := Fget_insuranceCommand.Parameters[1].Value.GetWideString;
end;

constructor methodsClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor methodsClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor methodsClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  Fuser_authenticationCommand.DisposeOf;
  Fget_enterpriseCommand.DisposeOf;
  Fget_productCommand.DisposeOf;
  Fget_insuranceCommand.DisposeOf;
  inherited;
end;

end.

