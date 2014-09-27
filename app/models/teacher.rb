class Teacher < ActiveRecord::Base
	has_secure_password

	has_many :assignments
	

	validates :password, presence: true, on: :create
	  
	validates :email,
			  :presence => true,
              :uniqueness => true,
              :format => { :with => /.+@.+\..+/ }

end
