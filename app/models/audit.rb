class Audit < ActiveRecord::Base
  belongs_to :financial_transaction
end
