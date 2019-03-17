class CreateServiceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :service_types do |t|
      t.string :name
      t.string :price
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
