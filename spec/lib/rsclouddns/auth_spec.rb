require_relative '../../spec_helper'

describe Rsclouddns::Auth do

  describe "Includes and Methods" do

    it "should include HTTParty" do
      Rsclouddns::Auth.should include HTTParty
    end

  end

end

