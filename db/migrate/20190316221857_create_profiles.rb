class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :email
      t.string :home
      t.string :mobile
      t.string :street_1
      t.string :street_2, default: "none"
      t.string :city
      t.string :state
      t.string :zip
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
