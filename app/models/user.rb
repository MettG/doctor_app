class User < ApplicationRecord
	has_many :appointments
  devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :validatable
	def full_name
		"#{self.first_name} #{self.last_name}"
	end
end
