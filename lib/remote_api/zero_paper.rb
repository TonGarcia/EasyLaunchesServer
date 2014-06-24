module REMOTE_API

  # Class for specific implementation of ZeroPaper API connection
  class ZeroPaper < REMOTE_API::FinanceManager
    public_class_method :do_login
    public_class_method :connected?
    public_class_method :send_launches

    # On instantiate ZP API auth
    def initialize
      auth_user
    end

    # Authenticate the user
    def do_login
      uri = URI.parse('https://zeropaper.com.br/api/v1/auth/create')
      res = Net::HTTP.post_form(uri, {email: 'ilton_unb@hotmail.com', password: 'u5ga6f123'})
      res.body
    end

    def send_launches

    end

    # Return if the user was correctly created
    def conected?

    end
  end

end