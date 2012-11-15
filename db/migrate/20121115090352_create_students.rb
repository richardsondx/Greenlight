class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :fullname
      t.string :gender
      t.string :video
      t.string :image
      t.text :i_want_to_become
      t.text :story
      t.string :twitter
      t.string :city
      t.string :province
      t.string :school
      t.string :school_id
      t.integer :graduation_year
      t.float :goal
      t.integer :user_id
      t.text :stories
      t.boolean :reached_goal

      t.timestamps
    end
  end
end
