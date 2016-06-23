class LineItem < ApplicationRecord
  belongs_to :photograph
  belongs_to :cart

def total_price
  price * quantity
end


end
