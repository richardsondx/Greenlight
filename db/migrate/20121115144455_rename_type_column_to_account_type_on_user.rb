class RenameTypeColumnToAccountTypeOnUser < ActiveRecord::Migration
  def up
  	rename_column :users, :type, :account_type
  end

  def down
  	rename_column :users, :account_type, :type
  end
end
