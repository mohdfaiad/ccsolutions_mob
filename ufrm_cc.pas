//
// Created by the DataSnap proxy generator.
// 29/07/2018 10:21:22
//

unit ufrm_cc;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  methodsClient = class(TDSAdminRestClient)
  private
    FechostringCommand: TDSRestCommand;
    FreversestringCommand: TDSRestCommand;
    Fuser_signinCommand: TDSRestCommand;
    Fget_productCommand: TDSRestCommand;
    Fget_enterpriseCommand: TDSRestCommand;
    Fget_insuranceCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function echostring(Value: string; const ARequestFilter: string = ''): string;
    function reversestring(Value: string; const ARequestFilter: string = ''): string;
    function user_signin(usr_username: string; usr_password: string; const ARequestFilter: string = ''): string;
    function get_product(contract_ctr_cod: string; const ARequestFilter: string = ''): string;
    function get_enterprise(contract_ctr_cod: string; const ARequestFilter: string = ''): string;
    function get_insurance(contract_ctr_cod: string; const ARequestFilter: string = ''): string;
  end;

const
  methods_echostring: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_reversestring: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_user_signin: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'usr_username'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'usr_password'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_get_product: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'contract_ctr_cod'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  methods_get_enterprise: array [0..1] of TDSRestParameterMetaData =
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

function methodsClient.echostring(Value: string; const ARequestFilter: string): string;
begin
  if FechostringCommand = nil then
  begin
    FechostringCommand := FConnection.CreateCommand;
    FechostringCommand.RequestType := 'GET';
    FechostringCommand.Text := 'methods.echostring';
    FechostringCommand.Prepare(methods_echostring);
  end;
  FechostringCommand.Parameters[0].Value.SetWideString(Value);
  FechostringCommand.Execute(ARequestFilter);
  Result := FechostringCommand.Parameters[1].Value.GetWideString;
end;

function methodsClient.reversestring(Value: string; const ARequestFilter: string): string;
begin
  if FreversestringCommand = nil then
  begin
    FreversestringCommand := FConnection.CreateCommand;
    FreversestringCommand.RequestType := 'GET';
    FreversestringCommand.Text := 'methods.reversestring';
    FreversestringCommand.Prepare(methods_reversestring);
  end;
  FreversestringCommand.Parameters[0].Value.SetWideString(Value);
  FreversestringCommand.Execute(ARequestFilter);
  Result := FreversestringCommand.Parameters[1].Value.GetWideString;
end;

function methodsClient.user_signin(usr_username: string; usr_password: string; const ARequestFilter: string): string;
begin
  if Fuser_signinCommand = nil then
  begin
    Fuser_signinCommand := FConnection.CreateCommand;
    Fuser_signinCommand.RequestType := 'GET';
    Fuser_signinCommand.Text := 'methods.user_signin';
    Fuser_signinCommand.Prepare(methods_user_signin);
  end;
  Fuser_signinCommand.Parameters[0].Value.SetWideString(usr_username);
  Fuser_signinCommand.Parameters[1].Value.SetWideString(usr_password);
  Fuser_signinCommand.Execute(ARequestFilter);
  Result := Fuser_signinCommand.Parameters[2].Value.GetWideString;
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
  FechostringCommand.DisposeOf;
  FreversestringCommand.DisposeOf;
  Fuser_signinCommand.DisposeOf;
  Fget_productCommand.DisposeOf;
  Fget_enterpriseCommand.DisposeOf;
  Fget_insuranceCommand.DisposeOf;
  inherited;
end;

end.

