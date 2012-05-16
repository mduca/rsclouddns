def config option
  #Add configs as needed
  config = {"USER" => "EMANRESU", "PASS" => "ch4ng3_m3", "API" => "api_key_here_2394lk2j34ljkg2lkj34"}
  if config.has_key? option
    config[option] 
  end
end
