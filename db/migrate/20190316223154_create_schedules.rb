class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :name
      t.time :mon
      t.time :tue
      t.time :wed
      t.time :thu
      t.time :fri
      t.time :sat
      t.time :sun
      t.references :salon, foreign_key: true
      


      t.timestamps
    end
  end
end
