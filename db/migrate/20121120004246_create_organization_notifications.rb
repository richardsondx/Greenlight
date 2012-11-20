class CreateOrganizationNotifications < ActiveRecord::Migration
  def change
    create_table :organization_notifications do |t|
      t.text :message
      t.string :notice_type
      t.string :from, :default => "admin"
      t.integer :organization_id, :unique => true

      t.timestamps
    end
  end
end
