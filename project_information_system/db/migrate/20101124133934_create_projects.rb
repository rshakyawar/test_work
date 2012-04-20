class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :project_name
      t.date :project_date
      t.string :project_status

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
