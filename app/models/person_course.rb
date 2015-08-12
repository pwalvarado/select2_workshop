class PersonCourse < ActiveRecord::Base
  attr_accessor :course_id
  belongs_to :person
  belongs_to :group
end
