class CombineItemsInCart < ActiveRecord::Migration[5.0]



def up
  #replace miltiple items for a single photograph in a cart with a single items
  Cart.all.each do |cart|
    #count the number of each photograph in the cart
    sums = cart.line_items.group(:photograph_id, :size).sum(quantity)

    sums.each do |photograph_id, size, quantity|
      if quantity > 1
        #remove individual items
        cart.line_items.where(photograph_id: photograph_id).delete_all

        #replace with a single item
        item= cart.line_items.build(photograph_id: photograph_id)
        item.quantity = quantity
        item.save!
      end
    end
  end
end

def down
  #split items with quanitity>1 into multiple items
  LineItem.where("quantity>1").each do |line_item|
    #add individual items
    line_item.quantity.times do
    LineItem.create cart_id: line_item.cart_id,
    photograph_id: line_item.photograph_id, quantity: 1
  end
end
  #remove original items
  line_item.destroy

end

end
