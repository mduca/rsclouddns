require_relative '../../spec_helper'

describe Rsclouddns::Conn do

    before :all do
      @conn = Rsclouddns::Conn.new()
    end

  describe 'initialization' do 

    it "should be and instance of Conn" do 
     @conn.should be_an_instance_of Rsclouddns::Conn 
    end

    it "should respond to several attrs" do 
      @conn.should respond_to :authuser 
      @conn.should respond_to :authkey 
      @conn.should respond_to :authtoken 
      @conn.should respond_to :authuser 
      @conn.should respond_to :authuser 
    end

  end
end
