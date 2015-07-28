class Inventory < ActiveRecord::Base
  has_many :contracts
end
