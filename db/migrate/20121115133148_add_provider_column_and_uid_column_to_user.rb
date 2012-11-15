class AddProviderColumnAndUidColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :gender, :string
    add_column :users, :picture, :string
  end
end
