class Student < ActiveRecord::Base
  attr_accessible :firstname, :fullname, :goal, :graduation_year, :i_want_to_become, 
  				  :image, :lastname, :stories, :story, :twitter, :user_id, :video,
  				  :gender, :province, :city, :school

  has_many :student_notifications
end
