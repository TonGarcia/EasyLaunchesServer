module REMOTE_API
  # Abstract class to specify the REMOTE_APIs behaviours
  class FinanceManager
    # Abstract methods
    private_class_method :do_login # Try to login on the remote
    private_class_method :connected? # Return true if success on remote
    private_class_method :send_launches # If connected send the values to the remote as the current_user
  end
end
