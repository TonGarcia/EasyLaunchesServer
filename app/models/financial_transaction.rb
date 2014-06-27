class FinancialTransaction < ActiveRecord::Base
  has_one :audit
  belongs_to :transaction_type
  belongs_to :finance_manager_session
end
