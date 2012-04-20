class UploadController < ApplicationController  
	layout EMPLOYEE_LAYOUT 

# add image and saved into thr database	
	def add_image_by_plugin
		@employee_image = current_user.employee_images.new(params[:employee_image])
		if @employee_image.save
			if is_admin?
			render :action=>"browse_image_plugin",:layout=>ADMIN_LAYOUT,:notice=>show_flash_message("Image is uploaded")
			else
			render :action=>"browse_image_plugin",:notice=>show_flash_message("Image is uploaded")	
			end
		else
			render :action=>"browse_image_plugin",:layout=>ADMIN_LAYOUT
		end
	end

# show for upload image
	def browse_image_plugin
		@employee_image=EmployeeImage.new()
		if is_admin?		
			render :layout=>ADMIN_LAYOUT
		end
	end

#show all the uploaded image and profile for logged in user 
	def show_profile_for_plugin
		@employee_image = current_user.employee_images.all
		if is_admin?		
			render :layout=>ADMIN_LAYOUT
		end
	end
	
end
