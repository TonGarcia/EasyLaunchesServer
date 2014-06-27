gclass TransactionType < ActiveRecord::Base
  has_many :financial_transactions
end
