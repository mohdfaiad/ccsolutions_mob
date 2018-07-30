object frm_dm: Tfrm_dm
  OldCreateOrder = False
  Height = 369
  Width = 499
  object mem_enterprise: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 64
    Top = 24
    object mem_enterprisecontract_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato'
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object mem_enterpriseent_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object mem_enterpriseent_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ent_id'
      Origin = 'ent_id'
    end
    object mem_enterpriseent_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'ent_type'
      Origin = 'ent_type'
      FixedChar = True
      Size = 1
    end
    object mem_enterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object mem_enterpriseent_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 85
    end
    object mem_enterpriseent_nickname: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Apelido'
      FieldName = 'ent_nickname'
      Origin = 'ent_nickname'
      Size = 85
    end
    object mem_enterpriseent_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ent_email'
      Origin = 'ent_email'
      Size = 65
    end
    object mem_enterpriseent_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object mem_enterpriseent_ie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IE'
      FieldName = 'ent_ie'
      Origin = 'ent_ie'
      Size = 25
    end
    object mem_enterpriseent_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'ent_im'
      Origin = 'ent_im'
      Size = 25
    end
    object mem_enterpriseent_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'ent_suframa'
      Origin = 'ent_suframa'
      Size = 25
    end
    object mem_enterpriseent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 9
    end
    object mem_enterpriseent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      Size = 50
    end
    object mem_enterpriseent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      Size = 5
    end
    object mem_enterpriseent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object mem_enterpriseent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object mem_enterpriseent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object mem_enterpriseent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object mem_enterpriseent_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'ent_add_bus_country'
      Origin = 'ent_add_bus_country'
      Size = 25
    end
    object mem_enterpriseent_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object mem_enterpriseent_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object mem_enterpriseent_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object mem_enterpriseent_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object mem_enterpriseent_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object mem_enterpriseent_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'ent_dt_open'
      Origin = 'ent_dt_open'
    end
    object mem_enterpriseent_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ent_status'
      Origin = 'ent_status'
      FixedChar = True
      Size = 1
    end
    object mem_enterpriseent_image1: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Logo'
      FieldName = 'ent_image1'
      Origin = 'ent_image1'
    end
    object mem_enterpriseent_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ent_deleted_at'
      Origin = 'ent_deleted_at'
    end
    object mem_enterpriseent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
    object mem_enterpriseparam_end_add_bus: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldKind = fkCalculated
      FieldName = 'param_end_add_bus'
      Size = 255
      Calculated = True
    end
  end
  object mem_insurance: TFDMemTable
    Active = True
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
    Active = True
    FieldDefs = <
      item
        Name = 'pro_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pro_id'
        DataType = ftInteger
      end
      item
        Name = 'pro_type'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'pro_initials'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'pro_tag'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'pro_description'
        DataType = ftWord
      end
      item
        Name = 'pro_gender'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_annotation'
        DataType = ftWord
      end
      item
        Name = 'pro_barcod'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pro_barcod_manufacturer'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pro_height'
        DataType = ftFloat
      end
      item
        Name = 'pro_width'
        DataType = ftFloat
      end
      item
        Name = 'pro_length'
        DataType = ftFloat
      end
      item
        Name = 'pro_weight'
        DataType = ftFloat
      end
      item
        Name = 'pro_liter'
        DataType = ftFloat
      end
      item
        Name = 'pro_status'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'pro_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'pro_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
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
