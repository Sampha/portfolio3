class AddPricelargeToPhotographs < ActiveRecord::Migration[5.0]
  def change
    add_column :photographs, :price_large, :decimal
  end
end
