class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :name
      t.string :email
      t.string :oauth_token
      t.datetime :oauth_expire_at
      t.string :type
      t.integer :profile_id

      t.timestamps
    end
  end
end
