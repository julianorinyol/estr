class RemoveProfileFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :profile_type
    remove_column :users, :profile_id
    add_column :users, :role, :string
  end
end
