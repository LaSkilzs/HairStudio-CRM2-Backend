class AddStylistToStylistInfo < ActiveRecord::Migration[5.2]
  def change
     add_reference :stylist_infos, :stylist, references: :users, index: true
    add_foreign_key :stylist_infos, :users, column: :stylist_id
  end
end
