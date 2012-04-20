class CreateEmployeeProjects < ActiveRecord::Migration
  def self.up
    create_table :employee_projects do |t|
      t.integer :employee_id
      t.integer :project_id
        
      t.timestamps
    end
  end

  def self.down
    drop_table :employee_projects
  end
end
