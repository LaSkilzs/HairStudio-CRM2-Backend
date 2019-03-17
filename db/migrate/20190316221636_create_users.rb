class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :role, default: "client"
      t.string :image, default: "https://cdn5.vectorstock.com/i/1000x1000/30/59/black-women-avatar-vector-21843059.jpg"
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
