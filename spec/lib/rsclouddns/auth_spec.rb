require_relative '../../spec_helper'

describe Rsclouddns::Auth do

  before(:all) do
   @auth = Rsclouddns::Auth.new('mduca', :password => "Linuxr0ckstar")
  end

  describe 'global settings' do 
    
    it "should include HTTParty" do 
      Rsclouddns::Auth.should include HTTParty
    end


    it "should have base_uri set" do 
      Rsclouddns::Auth.base_uri.should eq 'https://auth.api.rackspacecloud.com'
    end

    it "should have headers set" do 
      Rsclouddns::Auth.headers.should be_a_kind_of Hash
      Rsclouddns::Auth.headers.should have_key "Content-Type"
    end
  end
end
