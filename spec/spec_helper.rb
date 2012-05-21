require_relative '../lib/rsclouddns'

require 'rspec'
require 'webmock/rspec'
require 'vcr'
require 'turn'

Turn.config do |c|
  c.format = :outline
  c.trace = true
  c.natural = true
end

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'spec/fixtures/rsclouddns_cassettes'
  c.hook_into :webmock
  c.filter_sensitive_data('[REDACTED]') {"#{config('USERNAME')}"} 
  c.filter_sensitive_data('[REDACTED]') {"#{config('PASSWORD')}"} 
  c.filter_sensitive_data('[REDACTED]') {"#{config('API_KEY')}"} 
  c.filter_sensitive_data('[TENANTID]') {"#{config('TENANTID')}"} 

  c.before_record do |i|
  #Redacted until proper regex are created
    i.response.body.gsub!(/[a-z0-9]+-[a-z0-9]+-[a-z0-9]+-[a-z0-9]+-[a-z0-9]+/, '[REDACTED]')
  end
  
  #   Regex
  #   /^[a-z0-9]+-[a-z0-9]+-[a-z0-9]+-[a-z0-9]+-[a-z0-9]+/
end
