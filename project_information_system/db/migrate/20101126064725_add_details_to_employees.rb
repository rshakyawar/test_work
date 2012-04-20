class AddDetailsToEmployees < ActiveRecord::Migration
  def self.up
    add_column :employees, :employee_type, :string
  end

  def self.down
    remove_column :employees, :employee_type
  end
end
