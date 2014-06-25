module REMOTE_API
  # Class for specific implementation of ContaAzul API connection
  class ContaAzul < REMOTE_API::FinanceManager
    public_instance_method :do_login
    public_instance_method :connected?
    public_instance_method :send_launches

    # Try to login on the remote
    def do_login email, password

    end

    # Return true if success on remote
    def connected?

    end

    # If connected send the values to the remote as the current_user
    def send_launches

    end
  end
end