module Rsclouddns

  require_relative "../config"
  require "rsclouddns/version"
  require "httparty"
  require "hashugar"
  require "json"
  require "date"

 Dir[File.dirname(__FILE__) + '/rsclouddns/*rb'].each do |file|
  require file
 end

end
