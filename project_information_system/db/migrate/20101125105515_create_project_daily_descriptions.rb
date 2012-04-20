class CreateProjectDailyDescriptions < ActiveRecord::Migration
  def self.up
    create_table :project_daily_descriptions do |t|
      t.integer :employee_id
      t.integer :project_id
      t.date :emp_status_date
      t.string :emp_project_description

      t.timestamps
    end
  end

  def self.down
    drop_table :project_daily_descriptions
  end
end
