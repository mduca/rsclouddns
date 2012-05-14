module Rsclouddns
  class Auth

    include HTTParty

    base_uri 'https://auth.api.rackspacecloud.com'
    headers "Content-Type" => "application/json"

    def initialize(conn)
      response = Rsclouddns::Auth.post('/v1.1/auth', :body => {credentials:
        { username: "#{conn.authuser}", key: "#{conn.authkey}"}}.to_json)
    end

  end
end
