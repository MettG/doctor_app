class Doctor < ApplicationRecord
	has_many :appointments
	def full_name
		"#{self.first_name} #{self.last_name}"
	end
end
