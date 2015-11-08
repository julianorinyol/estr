class DeleteClientProfiles < ActiveRecord::Migration
  def change
    drop_table :client_profiles
  end
end
