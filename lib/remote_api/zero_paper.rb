module REMOTE_API
  # Class for specific implementation of ZeroPaper API connection
  class ZeroPaper < REMOTE_API::FinanceManager
    public_class_method :do_login
    public_class_method :connected?
    public_class_method :send_launches

    # Try to login on the remote
    def do_login email, password
      uri = URI.parse('https://zeropaper.com.br/api/v1/auth/create')
      res = Net::HTTP.post_form(uri, {email: 'ilton_unb@hotmail.com', password: 'u5ga6f123'})
      res.body
    end

    # Return true if success on remote
    def connected?

    end

    # If connected send the values to the remote as the current_user
    def send_launches

    end
  end

end