class AddStylistToHairCard < ActiveRecord::Migration[5.2]
  def change
    add_reference :hair_cards, :stylist, references: :users, index: true
    add_foreign_key :hair_cards, :users, column: :stylist_id
  end
end
