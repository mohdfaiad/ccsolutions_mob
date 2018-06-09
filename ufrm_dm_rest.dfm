object frm_dm_rest: Tfrm_dm_rest
  OldCreateOrder = False
  Height = 312
  Width = 232
  object rest_client: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 96
    Top = 24
  end
  object rest_request: TRESTRequest
    Client = rest_client
    Params = <>
    Response = rest_response
    SynchronizedEvents = False
    Left = 96
    Top = 72
  end
  object rest_response: TRESTResponse
    ContentType = 'text/html'
    Left = 96
    Top = 120
  end
  object rest_response_adapter: TRESTResponseDataSetAdapter
    Dataset = mem_rest
    FieldDefs = <>
    Response = rest_response
    NestedElements = True
    Left = 96
    Top = 168
  end
  object mem_rest: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 96
    Top = 216
  end
end
