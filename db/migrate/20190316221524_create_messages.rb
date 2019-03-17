class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
