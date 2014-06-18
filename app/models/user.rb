class User < ActiveRecord::Base
  has_many :finance_manager_sessions
  has_many :finance_managers, through: :finance_manager_sessions
end
