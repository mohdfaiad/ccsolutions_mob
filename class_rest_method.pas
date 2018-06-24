unit class_rest_method;

interface

uses class_rest_contract;

type
  Trest_config = class(Tparam_contract)
  public
    class var
      v_root_element, v_method, v_parameter: string;

    function base_url(const Amethod, Aparameter: string): string;
  end;

implementation

{ TRest }

function Trest_config.base_url(const Amethod, Aparameter: string): string;
begin
  Result := 'http://'+ address_wbs +'/api/public/methods/'+ Amethod +'/'+ Aparameter;
end;

end.
