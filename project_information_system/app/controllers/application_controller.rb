class ApplicationController < ActionController::Base

	# Constant which will used in all the controller	
	EMP_TYPE_ADMIN = "admin"
	ADMIN_LAYOUT="admin_layout"
	EMPLOYEE_LAYOUT="employee_layout"

  protect_from_forgery
	helper_method :is_admin?
	helper_method	:current_user

	# Check Session And Return current User
	def current_user
				unless session[:current_user].blank?
					session_user=session[:current_user]
					return session_user	
				end				
	end
	
	# Check Employee Type 
	def is_admin?
			 current_user.employee_type == EMP_TYPE_ADMIN ? true: false
	end
	
	# Show flash message
	def show_flash_message(message)
			unless message.blank?
				flash[:notice]=message
			return flash[:notice]
			end
	end
end
