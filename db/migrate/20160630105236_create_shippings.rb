class CreateShippings < ActiveRecord::Migration[5.0]
  def change
    create_table :shippings do |t|
      t.string :name
      t.decimal :cost
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
