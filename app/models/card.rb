class Card < ActiveRecord::Base

	belongs_to :user 
	validates :user, presence: true

	validates :number, presence: true,
						length: { is: 16 },
						format: { with: /\A[+-]?\d+\Z/ } #Regex to make sure card is a string of numbers only

	validates :security, presence: true,
						length: { in: 3..6 },
						format: { with: /\A[+-]?\d+\Z/ } #Regex to make sure card is a string of numbers only
						
    validates :expiration, presence: true,
						length: { is: 4 },
						numericality: { only_integer: true }

	validates :address1, :address2, presence: true

	validates :city, presence: true

	before_validation :upcase_state 
	validates :state, presence: true
					  # inclusion: { in: %w('AL' 'AK' 'AZ' 'AR' 'CA' 'CO' 'CT' 'DE' 'FL' 'GA' 'HI' 'ID' 'IL' 'IN' 'IA' 'KS' 'KY' 'LA' 'ME' 'MD' 'MA' 'MI' 'MN' 'MS' 'MO' 'MT' 'NE' 'NV' 'NH' 'NJ' 'NM' 'NY' 'NC' 'ND' 'OH' 'OK' 'OR' 'PA' 'RI' 'SC' 'SD' 'TN' 'TX' 'UT' 'VT' 'VA' 'WA' 'WV' 'WI' 'WY') }
					  # I tried to build a pool of options that the input would have to be (without using a drop-down interface)
	validates :zip, presence: true,
					length: { is: 5 },
					format: { with: /\A[+-]?\d+\Z/ } 


	def upcase_state
		self.state = self.state.upcase
	end

end
