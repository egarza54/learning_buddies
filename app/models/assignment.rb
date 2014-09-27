class Assignment < ActiveRecord::Base
	belongs_to :assignment_type
	belongs_to :teacher
	has_many :assignment_comments
	has_many :assignment_versions
	has_many :assignment_students
end
