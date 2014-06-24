module REMOTE_API
  # Abstract class to specify the REMOTE_APIs behaviours
  class FinanceManager
    private_class_method :do_login
    private_class_method :send_launches
    private_class_method :connected?
  end
end
