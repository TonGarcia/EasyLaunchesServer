module REMOTE_API
  # Class for specific implementation of ContaAzul API connection
  class ContaAzul < REMOTE_API::FinanceManager
    public_class_method :do_login
    public_class_method :connected?
    public_class_method :send_launches
  end
end