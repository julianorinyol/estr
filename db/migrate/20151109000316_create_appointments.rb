class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.boolean :finished, default: false
      t.timestamps null: false
    end
  end
end
