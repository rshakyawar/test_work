class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :user_name
      t.string :password
      t.string :employee_name
      t.string :employee_email
   
      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
