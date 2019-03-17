class AddStylistToSchedule < ActiveRecord::Migration[5.2]
  def change
    add_reference :schedules, :stylist, references: :users, index: true
    add_foreign_key :schedules, :users, column: :stylist_id
  end
end
