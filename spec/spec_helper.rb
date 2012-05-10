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
  c.cassette_library_dir = 'spec/fixtures/rsclouddns_cassettes'
  c.hook_into :webmock
end