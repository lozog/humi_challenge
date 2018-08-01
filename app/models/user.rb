class User < ApplicationRecord
	validates :first_name, 	presence: true
	validates :last_name, 	presence: true

	# available roles for this model
	royce_roles %w[ employee administrator can_add_hours can_edit_salaries ]

	# see app/views/users/show.html.erb to see this method in action
	def can_add_hours?
		return (self.has_role? 'administrator' or self.has_role? 'can_add_hours')
	end
end
