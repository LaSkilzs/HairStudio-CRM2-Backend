class RemoveForeignKeyFromStylistInfo < ActiveRecord::Migration[5.2]
  def change
    remove_reference :stylist_infos, :user, index: true
  end
end
