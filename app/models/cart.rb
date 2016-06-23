class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy


def add_product(photograph_id, size)
      current_item = line_items.find_by(photograph_id: photograph_id, size: size)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(photograph_id: photograph_id)
    end
  current_item
end

def total_price
  line_items.to_a.sum { |item| item.total_price }
end

end
