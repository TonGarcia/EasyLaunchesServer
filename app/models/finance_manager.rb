class FinanceManager < ActiveRecord::Base
  has_many :finance_manager_sessions
  has_many :users, through: :finance_manager_sessions
end
