class OrganizationNotification < ActiveRecord::Base
  attr_accessible :from, :message, :notice_type
  belongs_to :organization
end
