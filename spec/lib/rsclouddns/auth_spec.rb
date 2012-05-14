require_relative '../../spec_helper'

describe Rsclouddns::Auth do

  before :all do
    @auth = Rsclouddns::Conn.new(:username => 'test', :api_key => '3klj234wpeoiuczestke')
  end

  describe 'initialization' do 
    
    it "should include HTTParty" do 
      Rsclouddns::Auth.should include HTTParty
    end

    it "should use auth base_uri set" do 
      Rsclouddns::Auth.base_uri.should eq 'https://auth.api.rackspacecloud.com'
    end

    it "should respond with 200" do 
      Rsclouddns::Auth.get('/v1.1/').response.code.should eq 200.to_s
    end
  end
end
