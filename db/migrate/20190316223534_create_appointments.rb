class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :hairstyle
      t.datetime :date
      t.time :start
      t.integer :duration, default: "90"
      t.string :status, default: "pending"
      t.float :service_total
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
