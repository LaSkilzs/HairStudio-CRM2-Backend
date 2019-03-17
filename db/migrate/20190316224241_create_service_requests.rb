class CreateServiceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :service_requests do |t|
      t.references :appointment, foreign_key: true
      t.references :service_type, foreign_key: true

      t.timestamps
    end
  end
end
