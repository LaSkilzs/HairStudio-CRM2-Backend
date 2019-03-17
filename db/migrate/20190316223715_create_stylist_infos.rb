class CreateStylistInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :stylist_infos do |t|
      t.string :certification
      t.string :organization
      t.boolean :license, default: false
      t.string :license_id, default: "none"
      t.date :renewal
      t.text :about_summary
      t.string :webpic, default: "https://cdn5.vectorstock.com/i/1000x1000/30/59/black-women-avatar-vector-21843059.jpg"
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
