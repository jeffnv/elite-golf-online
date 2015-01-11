# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ActiveRecord::Base
  validates :name, :presence => true
  has_many :course_maps
  has_many :maps, through: :course_maps, source: :map
end
