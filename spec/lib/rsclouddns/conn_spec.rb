require_relative '../../spec_helper'

describe Rsclouddns::Conn do

  describe 'initialization' do 
    
    let(:conn) { Rsclouddns::Conn.new(:username => 'test', :api_key => 'testkey1230234r4klj2234jlhk2j34houi') }

    it "should respond to several attrs" do 
      conn.should respond_to :authuser 
    end
  end
end
