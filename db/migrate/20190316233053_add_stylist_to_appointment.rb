class AddStylistToAppointment < ActiveRecord::Migration[5.2]
  def change
     add_reference :appointments, :stylist, references: :users, index: true
    add_foreign_key :appointments, :users, column: :stylist_id
  end
end
