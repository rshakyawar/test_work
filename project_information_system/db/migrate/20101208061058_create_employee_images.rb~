class CreateEmployeeImages < ActiveRecord::Migration
  def self.up
    create_table :employee_images do |t|
      t.integer :employee_id
      t.string :employee_image

      t.timestamps
    end
  end

  def self.down
    drop_table :employee_images
  end
end
