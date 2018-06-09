object frm_dm: Tfrm_dm
  OldCreateOrder = False
  Height = 369
  Width = 499
  object mem_enterprise: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 64
    Top = 24
    object mem_enterpriseent_cod: TStringField
      FieldName = 'ent_cod'
      Size = 32
    end
    object mem_enterpriseent_id: TIntegerField
      FieldName = 'ent_id'
    end
    object mem_enterpriseent_type: TStringField
      FieldName = 'ent_type'
      Size = 1
    end
    object mem_enterpriseent_first_name: TStringField
      FieldName = 'ent_first_name'
      Size = 85
    end
    object mem_enterpriseent_last_name: TStringField
      FieldName = 'ent_last_name'
      Size = 85
    end
    object mem_enterpriseent_nickname: TStringField
      FieldName = 'ent_nickname'
      Size = 85
    end
    object mem_enterpriseent_email: TStringField
      FieldName = 'ent_email'
      Size = 65
    end
    object mem_enterpriseent_cnpj: TStringField
      FieldName = 'ent_cnpj'
      Size = 25
    end
    object mem_enterpriseent_ie: TStringField
      FieldName = 'ent_ie'
      Size = 25
    end
    object mem_enterpriseent_im: TStringField
      FieldName = 'ent_im'
      Size = 25
    end
    object mem_enterpriseent_suframa: TStringField
      FieldName = 'ent_suframa'
      Size = 25
    end
    object mem_enterpriseent_add_bus_zipcode: TStringField
      FieldName = 'ent_add_bus_zipcode'
      Size = 9
    end
    object mem_enterpriseent_add_bus_address: TStringField
      FieldName = 'ent_add_bus_address'
      Size = 50
    end
    object mem_enterpriseent_add_bus_number: TStringField
      FieldName = 'ent_add_bus_number'
      Size = 5
    end
    object mem_enterpriseent_add_bus_street: TStringField
      FieldName = 'ent_add_bus_street'
      Size = 45
    end
    object mem_enterpriseent_add_bus_complement: TStringField
      FieldName = 'ent_add_bus_complement'
      Size = 50
    end
    object mem_enterpriseent_add_bus_city: TStringField
      FieldName = 'ent_add_bus_city'
      Size = 35
    end
    object mem_enterpriseent_add_bus_state: TStringField
      FieldName = 'ent_add_bus_state'
      Size = 3
    end
    object mem_enterpriseent_add_bus_country: TStringField
      FieldName = 'ent_add_bus_country'
      Size = 3
    end
    object mem_enterpriseent_phone1: TStringField
      FieldName = 'ent_phone1'
      Size = 15
    end
    object mem_enterpriseent_phone2: TStringField
      FieldName = 'ent_phone2'
      Size = 15
    end
    object mem_enterpriseent_phone3: TStringField
      FieldName = 'ent_phone3'
      Size = 15
    end
    object mem_enterpriseent_phone4: TStringField
      FieldName = 'ent_phone4'
      Size = 15
    end
    object mem_enterpriseent_contact: TStringField
      FieldName = 'ent_contact'
      Size = 25
    end
    object mem_enterpriseent_dt_open: TDateField
      FieldName = 'ent_dt_open'
    end
    object mem_enterpriseent_status: TStringField
      FieldName = 'ent_status'
      Size = 1
    end
    object mem_enterpriseent_deleted_at: TDateTimeField
      FieldName = 'ent_deleted_at'
    end
    object mem_enterpriseent_dt_registration: TDateTimeField
      FieldName = 'ent_dt_registration'
    end
    object mem_enterpriseparam_end_add_bus: TStringField
      FieldName = 'param_end_add_bus'
      Size = 125
    end
  end
  object mem_insurance: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 64
    Top = 72
    object mem_insuranceins_cod: TStringField
      FieldName = 'ins_cod'
      Size = 32
    end
    object mem_insuranceins_id: TIntegerField
      FieldName = 'ins_id'
    end
    object mem_insuranceins_type: TStringField
      FieldName = 'ins_type'
      Size = 1
    end
    object mem_insuranceins_first_name: TStringField
      FieldName = 'ins_first_name'
      Size = 85
    end
    object mem_insuranceins_last_name: TStringField
      FieldName = 'ins_last_name'
      Size = 85
    end
    object mem_insuranceins_nickname: TStringField
      FieldName = 'ins_nickname'
      Size = 85
    end
    object mem_insuranceins_email: TStringField
      FieldName = 'ins_email'
      Size = 65
    end
    object mem_insuranceins_cnpj: TStringField
      FieldName = 'ins_cnpj'
      Size = 25
    end
    object mem_insuranceins_im: TStringField
      FieldName = 'ins_im'
      Size = 25
    end
    object mem_insuranceins_add_bus_zipcode: TStringField
      FieldName = 'ins_add_bus_zipcode'
      Size = 9
    end
    object mem_insuranceins_add_bus_address: TStringField
      FieldName = 'ins_add_bus_address'
      Size = 50
    end
    object mem_insuranceins_add_bus_number: TStringField
      FieldName = 'ins_add_bus_number'
      Size = 5
    end
    object mem_insuranceins_add_bus_street: TStringField
      FieldName = 'ins_add_bus_street'
      Size = 45
    end
    object mem_insuranceins_add_bus_complement: TStringField
      FieldName = 'ins_add_bus_complement'
      Size = 50
    end
    object mem_insuranceins_add_bus_city: TStringField
      FieldName = 'ins_add_bus_city'
      Size = 35
    end
    object mem_insuranceins_add_bus_state: TStringField
      FieldName = 'ins_add_bus_state'
      Size = 3
    end
    object mem_insuranceins_add_bus_country: TStringField
      FieldName = 'ins_add_bus_country'
      Size = 3
    end
    object mem_insuranceins_phone1: TStringField
      FieldName = 'ins_phone1'
      Size = 15
    end
    object mem_insuranceins_phone2: TStringField
      FieldName = 'ins_phone2'
      Size = 15
    end
    object mem_insuranceins_phone3: TStringField
      FieldName = 'ins_phone3'
      Size = 15
    end
    object mem_insuranceins_phone4: TStringField
      FieldName = 'ins_phone4'
      Size = 15
    end
    object mem_insuranceins_contact: TStringField
      FieldName = 'ins_contact'
      Size = 25
    end
    object mem_insuranceins_dt_open: TDateField
      FieldName = 'ins_dt_open'
    end
    object mem_insuranceins_status: TStringField
      FieldName = 'ins_status'
      Size = 1
    end
    object mem_insuranceins_deleted_at: TDateTimeField
      FieldName = 'ins_deleted_at'
    end
    object mem_insuranceins_dt_registration: TDateTimeField
      FieldName = 'ins_dt_registration'
    end
  end
  object mem_product: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 64
    Top = 120
    object mem_productpro_cod: TStringField
      FieldName = 'pro_cod'
      Size = 32
    end
    object mem_productpro_id: TIntegerField
      FieldName = 'pro_id'
    end
    object mem_productpro_type: TStringField
      FieldName = 'pro_type'
      Size = 1
    end
    object mem_productpro_name: TStringField
      FieldName = 'pro_name'
      Size = 85
    end
    object mem_productpro_initials: TStringField
      FieldName = 'pro_initials'
      Size = 85
    end
    object mem_productpro_tag: TStringField
      FieldName = 'pro_tag'
      Size = 255
    end
    object mem_productpro_description: TWordField
      FieldName = 'pro_description'
    end
    object mem_productpro_gender: TStringField
      FieldName = 'pro_gender'
      Size = 1
    end
    object mem_productpro_annotation: TWordField
      FieldName = 'pro_annotation'
    end
    object mem_productpro_barcod: TStringField
      FieldName = 'pro_barcod'
      Size = 25
    end
    object mem_productpro_barcod_manufacturer: TStringField
      FieldName = 'pro_barcod_manufacturer'
      Size = 25
    end
    object mem_productpro_height: TFloatField
      FieldName = 'pro_height'
    end
    object mem_productpro_width: TFloatField
      FieldName = 'pro_width'
    end
    object mem_productpro_length: TFloatField
      FieldName = 'pro_length'
    end
    object mem_productpro_weight: TFloatField
      FieldName = 'pro_weight'
    end
    object mem_productpro_liter: TFloatField
      FieldName = 'pro_liter'
    end
    object mem_productpro_status: TStringField
      FieldName = 'pro_status'
      Size = 3
    end
    object mem_productpro_deleted_at: TDateTimeField
      FieldName = 'pro_deleted_at'
    end
    object mem_productpro_dt_registration: TDateTimeField
      FieldName = 'pro_dt_registration'
    end
  end
end
