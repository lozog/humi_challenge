class User < ApplicationRecord
	validates :first_name, 	presence: true
	validates :last_name, 	presence: true

	royce_roles %w[ employee administrator ]
end
