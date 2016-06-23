class AddPricexlargeToPhotographs < ActiveRecord::Migration[5.0]
  def change
    add_column :photographs, :price_xlarge, :decimal
  end
end
