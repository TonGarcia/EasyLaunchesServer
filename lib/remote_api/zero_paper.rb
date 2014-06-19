module REMOTE_API

  # Class for specific implementation of ZeroPaper API connection
  class ZeroPaper
    # On instantiate ZP API auth
    def initialize
      auth_user
    end

    # Authenticate the user
    def auth_user
      # POST https://zeropaper.com.br/api/v1/auth/create
      uri = URI.parse('https://zeropaper.com.br/api/v1/auth/create')
      request = Net::HTTP::Post.new(uri.path, {'Content-Type' =>'application/json'})
      request.body = data.to_json
    end

    # Return if the user was correctly created
    def conected?

    end
  end

end