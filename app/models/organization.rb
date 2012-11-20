class Organization < ActiveRecord::Base
  attr_accessible :contributed_count, :contribution, :description, :logo, :manager, :name, :user_id
  has_many :organization_notifications
end
