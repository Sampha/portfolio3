class Order < ApplicationRecord
  validates :name, :address, presence: true
end
