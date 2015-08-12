class Person < ActiveRecord::Base

  has_many :person_courses, :dependent => :destroy
  has_many :groups, :through => :person_courses

  # nested attributes
  accepts_nested_attributes_for :person_courses,
    :reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} },
      :allow_destroy => true

  validates :name, presence: true

end
