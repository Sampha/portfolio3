class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :photograph, optional: true
  belongs_to :cart

  def total_price
    price * quantity
  end
end
