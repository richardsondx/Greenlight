class AddStudentNotificationToStudent < ActiveRecord::Migration
  def change
    add_column :students, :student_notifications, :text
  end
end
