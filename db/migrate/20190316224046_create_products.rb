class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.string :quantity
      t.float :cost
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
