class Employee < ActiveRecord::Base
has_many :employee_projects, :dependent=>:destroy 
has_many :employee_images,:dependent=>:destroy 
has_many :project_daily_descriptions, :dependent=>:destroy 
validates_presence_of :user_name,:employee_name,:employee_email
validates_format_of :employee_name,:with => /\A[a-zA-Z\d ]+\z/
validates_uniqueness_of :user_name,:employee_email
validates_confirmation_of :password
validates_format_of :employee_email,:with=> /\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}\b/
validates_length_of :password, :in  => 4..10
named_scope :show_employee_for_add_in_the_project ,lambda { |project_id|
								{:conditions => ["id NOT IN (select employee_id from employee_projects where project_id=?)",project_id]}
							  }
named_scope :show_employee_for_delete_from_project ,lambda { |project_id|
								{:conditions => ["id IN (select employee_id from employee_projects where project_id=?)",project_id]}
							  }


end
