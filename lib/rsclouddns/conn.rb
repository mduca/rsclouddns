module Rsclouddns
  class Conn

    attr_reader   :authuser
    attr_reader   :authkey
    attr_accessor :authtoken
    attr_accessor :authok
    attr_accessor :host
    attr_accessor :path
    attr_accessor :port
    attr_accessor :scheme
    attr_reader   :auth_url
    attr_reader   :region

    def initialize(options = {:retry_auth => true})
     @authuser   = options[:username] 
     @authkey    = options[:api_key]
     @authuser   = options[:region]
     @retry_auth = options[:retry_auth]
     @auth_url   = options["auth_url"]
     @authok     = false
     @http = {}
     Rsclouddns::Auth.new(@authuser, :password => '') #TODO refactor
    end

    def authok?
      @authok
    end

  end
end
