unit ufrm_dm_rest;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, class_rest_method, ufrm_dm;

type
  Tfrm_dm_rest = class(TDataModule)
    rest_client: TRESTClient;
    rest_request: TRESTRequest;
    rest_response: TRESTResponse;
    rest_response_adapter: TRESTResponseDataSetAdapter;
    mem_rest: TFDMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
    function Get(const Amethod, Aparameter: string): Boolean;
    function Post(const Amethod, Aparameter: string): Boolean;
    function Put(const Amethod, Aparameter: string): Boolean;
    function Delete(const Amethod, Aparameter: string): Boolean;

    function get_enterprise_mobile(): Boolean;
    function get_insurance_mobile(): Boolean;
    function get_exam_mobile(): Boolean;
  end;

var
  frm_dm_rest: Tfrm_dm_rest;

implementation

uses
  System.JSON;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

function Tfrm_dm_rest.Delete(const Amethod, Aparameter: string): Boolean;
begin
//
end;

function Tfrm_dm_rest.Get(const Amethod, Aparameter: string): Boolean;
var
  v_success: string;
  rest_config: Trest_config;
begin
  try
    try
      rest_config := Trest_config.Create;

      mem_rest.Close;
      rest_response.RootElement := EmptyStr;
      rest_client.BaseURL := rest_config.base_url(Amethod, Aparameter);
      rest_request.Execute;

      v_success := (rest_response.JSONValue as TJSONObject).Values['result'].Value;

      Result := v_success.Equals('success');
    except on E: Exception do
      Result := False;
    end;
  finally

  end;
end;

function Tfrm_dm_rest.get_enterprise_mobile: Boolean;
begin
  try
    try
      begin
        if Get(Trest_config.v_method, Trest_config.v_parameter) then
        begin
          rest_response.RootElement := Trest_config.v_root_element;

          frm_dm.mem_enterprise.Close;
          frm_dm.mem_enterprise.Open;
          mem_rest.First;

          while not(mem_rest.Eof) do begin
            frm_dm.mem_enterprise.Append;
            frm_dm.mem_enterprise.FieldByName('ent_nickname').AsString            := mem_rest.FieldByName('ent_nickname').AsString;
            frm_dm.mem_enterprise.FieldByName('ent_email').AsString               := mem_rest.FieldByName('ent_email').AsString;
            frm_dm.mem_enterprise.FieldByName('ent_phone1').AsString              := mem_rest.FieldByName('ent_phone1').AsString;
            frm_dm.mem_enterprise.FieldByName('ent_phone2').AsString              := mem_rest.FieldByName('ent_phone2').AsString;
            frm_dm.mem_enterprise.FieldByName('ent_phone3').AsString              := mem_rest.FieldByName('ent_phone3').AsString;
            frm_dm.mem_enterprise.FieldByName('ent_phone4').AsString              := mem_rest.FieldByName('ent_phone4').AsString;
            frm_dm.mem_enterprise.FieldByName('ent_contact').AsString             := mem_rest.FieldByName('ent_contact').AsString;
            frm_dm.mem_enterprise.FieldByName('param_end_add_bus').AsString       := mem_rest.FieldByName('ent_add_bus_address').AsString +', '+
                                                                                            mem_rest.FieldByName('ent_add_bus_number').AsString +' - '+
                                                                                            mem_rest.FieldByName('ent_add_bus_street').AsString +', '+
                                                                                            mem_rest.FieldByName('ent_add_bus_city').AsString +' - '+
                                                                                            mem_rest.FieldByName('ent_add_bus_state').AsString +', '+
                                                                                            mem_rest.FieldByName('ent_add_bus_zipcode').AsString;


            frm_dm.mem_enterprise.Post;
            mem_rest.Next;
          end;
        end else begin
          Result := False;
        end;
      end;
    except on E: Exception do
      begin
        Result := False;
      end;
    end;
  finally
  end;
end;

function Tfrm_dm_rest.get_exam_mobile: Boolean;
begin
try
    try
      begin
        if Get(Trest_config.v_method, Trest_config.v_parameter) then
        begin
          rest_response.RootElement := Trest_config.v_root_element;

          frm_dm.mem_product.Close;
          frm_dm.mem_product.Open;
          mem_rest.First;

          while not(mem_rest.Eof) do begin
            frm_dm.mem_product.Append;
            frm_dm.mem_product.FieldByName('pro_name').AsString            := mem_rest.FieldByName('pro_name').AsString;
            frm_dm.mem_product.FieldByName('pro_initials').AsString        := mem_rest.FieldByName('pro_initials').AsString;
            frm_dm.mem_product.FieldByName('pro_description').AsString     := mem_rest.FieldByName('pro_description').AsString;
            frm_dm.mem_product.FieldByName('pro_gender').AsString          := mem_rest.FieldByName('pro_gender').AsString;

            frm_dm.mem_product.Post;
            mem_rest.Next;
          end;
        end else begin
          Result := False;
        end;
      end;
    except on E: Exception do
      begin
        Result := False;
      end;
    end;
  finally
  end;
end;

function Tfrm_dm_rest.get_insurance_mobile: Boolean;
begin
try
    try
      begin
        if Get(Trest_config.v_method, Trest_config.v_parameter) then
        begin
          rest_response.RootElement := Trest_config.v_root_element;

          frm_dm.mem_insurance.Close;
          frm_dm.mem_insurance.Open;
          mem_rest.First;

          while not(mem_rest.Eof) do begin
            frm_dm.mem_insurance.Append;
            frm_dm.mem_insurance.FieldByName('ins_nickname').AsString := mem_rest.FieldByName('ent_nickname').AsString;

            frm_dm.mem_insurance.Post;
            mem_rest.Next;
          end;
        end else begin
          Result := False;
        end;
      end;
    except on E: Exception do
      begin
        Result := False;
      end;
    end;
  finally
  end;
end;

function Tfrm_dm_rest.Post(const Amethod, Aparameter: string): Boolean;
begin
//
end;

function Tfrm_dm_rest.Put(const Amethod, Aparameter: string): Boolean;
begin
//
end;

end.
