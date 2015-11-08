class DropManagerProfiles < ActiveRecord::Migration
  def change
    drop_table :manager_profiles
  end
end
