class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :manager
      t.string :logo
      t.string :city
      t.string :province
      t.text :description
      t.float :contribution
      t.integer :contributed_count
      t.integer :user_id

      t.timestamps
    end
  end
end
