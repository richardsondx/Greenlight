class AddProfileStateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_state, :integer, :default => 0
  end
end
