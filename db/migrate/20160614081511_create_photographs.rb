class CreatePhotographs < ActiveRecord::Migration[5.0]
  def change
    create_table :photographs do |t|
      t.string :title
      t.string :image
      t.text :descritpion
      t.boolean :active
      t.boolean :is_cover
      t.integer :order
      t.decimal :price
      t.references :photo_catagory, foreign_key: true

      t.timestamps
    end
  end
end
