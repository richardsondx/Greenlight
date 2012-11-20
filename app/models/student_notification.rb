class StudentNotification < ActiveRecord::Base
  attr_accessible :from, :message, :notice_type
  belongs_to :student
end
