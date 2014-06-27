class FinanceManagerSession < ActiveRecord::Base
  belongs_to :user
  belongs_to :finance_manager
  has_many :financial_transactions
end
