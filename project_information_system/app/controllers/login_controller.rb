class LoginController < ApplicationController 

#GET :This method take the argument and check it in Database and Forword the request to Next page 
  def login_check
		@current_user=Employee.find(:first,:conditions => ["user_name =? AND password =?",params[:user_name],params[:password]])
		 session[:current_user]=@current_user	
			if current_user	
				if is_admin?
					redirect_to admin_login_show_path  							# Forword to Show admin page
				else 
					redirect_to employee_login_show_path						# Forword to Show Employee page
				end	
		 else 
			 redirect_to(loginpage_path,:notice=>show_flash_message('Worng username or password')) 	
			end     
	end

#Show View for change password
	def take_password
		if is_admin?
			render :layout=>ADMIN_LAYOUT
		else
		render :layout=>EMPLOYEE_LAYOUT
		end	
	end

#Get: Check the User in the database and Change the password
	def change_password
		 	if params[:current_password]==current_user.password
				if params[:new_password]==params[:conform_password]
					 current_user.password=params[:new_password]
						if current_user.save	
			  		  redirect_to take_password_path,:notice=>show_flash_message('Your Password is Successfully Changed.')
			  		else
							show_flash_message('Your Password is not Changed.')
			   		 	redirect_to take_password_path
	 					end
	  	 	else
				 		redirect_to take_password_path,:notice=>show_flash_message('New Password and Conform password not matched.')
				end
			else
				 		redirect_to take_password_path ,:notice=>show_flash_message('Old Password is not correct.')
			end
		end		

# Destroy the Session
	def destroy
		session[:current_user]=nil
		show_flash_message('Successfully Signout.')
		redirect_to loginpage_path
	end
end
