class AddColumnToServiceType < ActiveRecord::Migration[5.2]
  def change
    add_column :service_types, :duration, :integer, default: 90
  end
end
