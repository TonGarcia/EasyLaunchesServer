module REMOTE_API

  # Class for specific implementation of ZeroPaper API connection
  class ZeroPaper
    # On instantiate ZP API auth
    def initialize
      auth_user
    end

    # Authenticate the user
    def auth_user
      uri = URI.parse('https://zeropaper.com.br/api/v1/auth/create')
      res = Net::HTTP.post_form(uri, {email: 'ilton_unb@hotmail.com', password: 'u5ga6f123'})
      res.body
    end

    # Return if the user was correctly created
    def conected?

    end
  end

end