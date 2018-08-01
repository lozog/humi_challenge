# RoR Challenge

### Design Decisions

The users model is designed to accomodate many different levels of permissions.
I decided to use the Royce gem to implement roles.  
A user can be given the appropriate roles, and the system can check whether or not they are allowed to perform any given action.

This design allows for fine-grained permission tuning. For example, an action can be allowed only for employees, or employees and administrators, or just administrators, etc.  
By adding more specific roles for individual actions (see `user.rb` for some examples), permissions can be toggled at the individual user level.
