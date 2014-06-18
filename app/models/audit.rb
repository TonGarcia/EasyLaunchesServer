class Audit < ActiveRecord::Base
  belongs_to :transaction
end
