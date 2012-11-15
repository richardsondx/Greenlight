class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.string :province
      t.integer :students

      t.timestamps
    end
  end
end
