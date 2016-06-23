class AddPricesmallToPhotographs < ActiveRecord::Migration[5.0]
  def change
    add_column :photographs, :price_small, :decimal
  end
end
