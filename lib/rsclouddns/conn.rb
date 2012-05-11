module Rsclouddns
  class Conn

    attr_reader   :authuser
    attr_reader   :authkey
    attr_accessor :authtoken
    attr_accessor :authok
    attr_accessor :mgmthost
    attr_accessor :mgmtpath
    attr_accessor :mgmtport
    attr_accessor :mgmtscheme
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
     #Rsclouddns::Auth.new(self)
    end

    def authok?
      @authok
    end

  end
end
