class Assignment < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :assignment_type
	has_many :assignment_comments
	has_many :assignment_versions
	has_many :assignment_students
end
