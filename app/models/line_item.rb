class LineItem < ApplicationRecord
  belongs_to :photograph
  belongs_to :cart

def total_price
  photograph.price * quantity
end


end
