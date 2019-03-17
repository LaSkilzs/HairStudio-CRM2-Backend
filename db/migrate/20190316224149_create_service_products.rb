class CreateServiceProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :service_products do |t|
      t.references :product, foreign_key: true
      t.references :service_type, foreign_key: true

      t.timestamps
    end
  end
end
