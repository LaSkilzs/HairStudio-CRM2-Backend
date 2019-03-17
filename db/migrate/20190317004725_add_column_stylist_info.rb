class AddColumnStylistInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :stylist_infos, :hours_completed, :integer, default: 0
  end
end
