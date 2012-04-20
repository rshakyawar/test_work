class EmployeeProject < ActiveRecord::Base
belongs_to :employee
belongs_to :project
validates_presence_of :employee_id
validates_presence_of :project_id
validates_numericality_of :employee_id, :only_integer => true
validates_numericality_of :project_id, :only_integer => true
named_scope :employee_on_project,lambda { |project_id|
    if project_id
      { :conditions => {:project_id =>project_id}}
    end
    }
named_scope :delete_employee_from_project,lambda { |employee_id,project_id|{:conditions => ["employee_id = ? And project_id = ?",employee_id,project_id]} }	
end
