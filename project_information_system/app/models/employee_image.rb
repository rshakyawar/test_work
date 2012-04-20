class EmployeeImage < ActiveRecord::Base
belongs_to :employee
validates_attachment_presence :photo 
validates_attachment_content_type :photo, :content_type=>['image/jpeg', 'image/png', 'image/gif']
# Paperclip
  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100",
      :small  => "150x150" }

end

