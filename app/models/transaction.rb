class Transaction < ActiveRecord::Base
  belongs_to :transaction_type
  belongs_to :operation_type
  belongs_to :finance_manager_session
end
