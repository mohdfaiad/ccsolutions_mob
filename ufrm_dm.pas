unit ufrm_dm;

interface

uses
  System.SysUtils,
  System.Classes,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Data.DB;

type
  Tfrm_dm = class(TDataModule)
    mem_enterprise: TFDMemTable;
    mem_insurance: TFDMemTable;
    mem_product: TFDMemTable;
    mem_productpro_cod: TStringField;
    mem_productpro_id: TIntegerField;
    mem_productpro_type: TStringField;
    mem_productpro_name: TStringField;
    mem_productpro_initials: TStringField;
    mem_productpro_tag: TStringField;
    mem_productpro_description: TWordField;
    mem_productpro_gender: TStringField;
    mem_productpro_annotation: TWordField;
    mem_productpro_barcod: TStringField;
    mem_productpro_barcod_manufacturer: TStringField;
    mem_productpro_height: TFloatField;
    mem_productpro_width: TFloatField;
    mem_productpro_length: TFloatField;
    mem_productpro_weight: TFloatField;
    mem_productpro_liter: TFloatField;
    mem_productpro_status: TStringField;
    mem_productpro_deleted_at: TDateTimeField;
    mem_insuranceins_cod: TStringField;
    mem_insuranceins_id: TIntegerField;
    mem_insuranceins_type: TStringField;
    mem_insuranceins_first_name: TStringField;
    mem_insuranceins_last_name: TStringField;
    mem_insuranceins_nickname: TStringField;
    mem_insuranceins_email: TStringField;
    mem_insuranceins_cnpj: TStringField;
    mem_insuranceins_im: TStringField;
    mem_insuranceins_add_bus_zipcode: TStringField;
    mem_insuranceins_add_bus_address: TStringField;
    mem_insuranceins_add_bus_number: TStringField;
    mem_insuranceins_add_bus_street: TStringField;
    mem_insuranceins_add_bus_complement: TStringField;
    mem_insuranceins_add_bus_city: TStringField;
    mem_insuranceins_add_bus_state: TStringField;
    mem_insuranceins_add_bus_country: TStringField;
    mem_insuranceins_phone1: TStringField;
    mem_insuranceins_phone2: TStringField;
    mem_insuranceins_phone3: TStringField;
    mem_insuranceins_phone4: TStringField;
    mem_insuranceins_contact: TStringField;
    mem_insuranceins_dt_open: TDateField;
    mem_insuranceins_status: TStringField;
    mem_insuranceins_deleted_at: TDateTimeField;
    mem_insuranceins_dt_registration: TDateTimeField;
    mem_productpro_dt_registration: TDateTimeField;
    mem_enterprisecontract_ctr_cod: TStringField;
    mem_enterpriseent_cod: TStringField;
    mem_enterpriseent_id: TLongWordField;
    mem_enterpriseent_type: TStringField;
    mem_enterpriseent_first_name: TStringField;
    mem_enterpriseent_last_name: TStringField;
    mem_enterpriseent_nickname: TStringField;
    mem_enterpriseent_email: TStringField;
    mem_enterpriseent_cnpj: TStringField;
    mem_enterpriseent_ie: TStringField;
    mem_enterpriseent_im: TStringField;
    mem_enterpriseent_suframa: TStringField;
    mem_enterpriseent_add_bus_zipcode: TStringField;
    mem_enterpriseent_add_bus_address: TStringField;
    mem_enterpriseent_add_bus_number: TStringField;
    mem_enterpriseent_add_bus_street: TStringField;
    mem_enterpriseent_add_bus_complement: TStringField;
    mem_enterpriseent_add_bus_city: TStringField;
    mem_enterpriseent_add_bus_state: TStringField;
    mem_enterpriseent_add_bus_country: TStringField;
    mem_enterpriseent_phone1: TStringField;
    mem_enterpriseent_phone2: TStringField;
    mem_enterpriseent_phone3: TStringField;
    mem_enterpriseent_phone4: TStringField;
    mem_enterpriseent_contact: TStringField;
    mem_enterpriseent_dt_open: TDateField;
    mem_enterpriseent_status: TStringField;
    mem_enterpriseent_image1: TBlobField;
    mem_enterpriseent_deleted_at: TDateTimeField;
    mem_enterpriseent_dt_registration: TDateTimeField;
    mem_enterpriseparam_end_add_bus: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
