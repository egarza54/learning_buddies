class Student < ActiveRecord::Base
	has_secure_password

	has_many :assignment_students
	has_many :assignments, through: :assignment_students
end
