class AddSignInCountAndCurrentSignInColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :sign_in_count, :integer, :default => 0
    add_column :users, :current_sign_in_ip, :string
  end
end
