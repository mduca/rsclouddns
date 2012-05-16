def config option
  config = {

    #Add data that is sensitive

    "USERNAME" => "EMANRESA", 
    "PASSWORD" => "Ch4nG3_M3"
    "API_KEY"  => "qsdbdsxwpeiru_test_key_123ukjh23",
    "TENANTID" => "654321"

  }
  if config.has_key? option
    config[option] 
  end

end
