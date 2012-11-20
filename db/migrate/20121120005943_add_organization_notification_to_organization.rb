class AddOrganizationNotificationToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :organization_notifications, :text
  end
end
