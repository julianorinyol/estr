class CreateTableAppointmentsUsers < ActiveRecord::Migration
  def change
    create_table :appointments_users do |t|
      t.integer :user_id
      t.integer :appointment_id
    end
  end
end
