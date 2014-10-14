class User < ActiveRecord::Base

	has_secure_password

	has_many :cards, inverse_of: :user

	#Version 1
	# validates_presence_of :email
	#Version 2 - more modular, Rails/Ruby is moving in this direction
	validates :email,  presence: true, 
			   		  uniqueness: true, 
			   		  format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, 
			   		  			message: 'Oooops'
							  } #slightly better practice, is to pass a method into format. Define Regex in the method. 
					
end
