module Rsclouddns
  class Auth

    include HTTParty
    base_uri 'https://auth.api.rackspacecloud.com'
    headers "Content-Type" => "application/json"

    attr_accessor :username, :credential

    def initialize(username, credential={})
      @username = username
      self.credential = credential
      self.class.post('/v2.0/tokens', :body => "#{auth_type}")
    end

    def auth_type
      if credential.has_key? :api_key
        auth_request "RAX-KSKEY:apiKeyCredentials", "apiKey", credential[:api_key]
      elsif credential.has_key? :password
        auth_request "passwordCredentials", "password", credential[:password]
      else 
        #TODO eventually raise errors
        puts "password or api_key required"
      end
    end

    def auth_request(name, auth_type, auth_cred)
      #TODO possible refactor. This seems ugly/wrong
      { auth:
        { "#{name}" =>
          { username: "#{@username}", "#{auth_type}" => "#{auth_cred}" } } }.to_json
    end

  end
end
