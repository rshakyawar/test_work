class ProjectDailyDescription < ActiveRecord::Base
belongs_to :employee
belongs_to :project
named_scope:employee_project_daily_description,lambda { |project_id,employee_id|
			{:conditions => ["project_id = ? AND employee_id = ?",project_id,employee_id]} 
    }
end
