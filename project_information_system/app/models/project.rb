class Project < ActiveRecord::Base
has_many :employee_projects ,:dependent=>:destroy
has_many :project_daily_descriptions, :dependent=>:destroy 
validates_presence_of :project_name
validates_presence_of :project_status
	
end
