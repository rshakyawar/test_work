class AddPhotosToEmployeeImages < ActiveRecord::Migration
  def self.up
    add_column :employee_images, :photo_file_name, :string
    add_column :employee_images, :photo_content_type, :string
    add_column :employee_images, :photo_file_size, :integer

  end

  def self.down
    remove_column :employee_images, :photo_file_name
    remove_column :employee_images, :photo_content_type
    remove_column :employee_images, :photo_file_size
  end
end
