class DropTableUserNotification < ActiveRecord::Migration
  def up
  	drop_table :user_notifications
  end
end
