class FinanceManagerSession < ActiveRecord::Base
  belongs_to :finance_manager
  belongs_to :user
end
