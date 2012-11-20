class CreateStudentNotifications < ActiveRecord::Migration
  def change
    create_table :student_notifications do |t|
      t.text :message
      t.string :notice_type
      t.string :from
      t.integer :student_id, :unique => true

      t.timestamps
    end
  end
end
