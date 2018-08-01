class User < ApplicationRecord
	validates :first_name, 	presence: true
	validates :last_name, 	presence: true

	royce_roles %w[ employee administrator can_add_hours can_edit_salaries ]
end
