module REMOTE_API
  # Abstract class to specify the REMOTE_APIs behaviours
  class FinanceManager
    # Abstract methods
    private_instance_methods :do_login
    private_instance_methods :connected?
    private_instance_methods :send_launches

    # Try to login on the remote
    def do_login
    end

    # Return true if success on remote
    def connected?
    end

    # If connected send the values to the remote as the current_user
    def send_launches
    end
  end
end
