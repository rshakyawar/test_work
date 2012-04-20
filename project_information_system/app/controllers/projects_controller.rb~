class ProjectsController < ApplicationController
layout ADMIN_LAYOUT
	
	# Show all project for employee
  def index
    @projects = Project.all
		render :layout=>EMPLOYEE_LAYOUT
  end
	
	# Show View for Add Project 
  def new
    @project = Project.new	
  end

	# Add New project
  def create
    @project = Project.new(params[:project])
		if @project.save
  		redirect_to :action=>"admin_login_show",:controller=>:projects
		else 
			render :action=>"new"
		end	
	end

 # First Page of the logged in admin
  def admin_login_show
		@project =Project.all
	end

 # It Will show employees to add in the selected Project 
	def show_employee_for_add_in_the_project
		#@employee=Employee.find(:all, :conditions => ["id NOT IN (select employee_id from employee_projects where project_id=?)",params[:id]])
		@employee=Employee.show_employee_for_add_in_the_project(params[:id])
	end

 # Add employee with in the project
	def add_employee_with_in_the_project
		@add_employee_with_in_the_project = EmployeeProject.new()
		@add_employee_with_in_the_project[:employee_id]=params[:employee_name][:id]
		@add_employee_with_in_the_project[:project_id]=params[:id]
		if @add_employee_with_in_the_project.save
			redirect_to :action=>"show_employee_for_add_in_the_project" ,:controller=>:projects,:id=>params[:id]	
		else
			render :action=>"show_employee_for_add_in_the_project" ,:notice=>show_flash_message("Employee Is not Added")
		end
	end
	
# It Will show employees to delete in the selected Project 
	def show_employee_for_delete_from_project
		#@employee=Employee.find(:all, :conditions => ["id IN (select employee_id from employee_projects where project_id=?)",params[:id]])
		@employee=Employee.show_employee_for_delete_from_project(params[:id])
	end
	
 # Delete employee with in the project
	def delete_employee_from_project
		#@delete_employee_from_project= EmployeeProject.find(:first, :conditions => ["employee_id = ? And project_id = ?",params[:employee_name][:id],params[:id]])	
		@delete_employee_from_project= EmployeeProject.delete_employee_from_project(params[:employee_name][:id],params[:id]).first
		if @delete_employee_from_project.destroy 
			redirect_to :action=>"show_employee_for_delete_from_project" ,:controller=>:projects,:id=>params[:id]
		else 
			render :action=>"show_employee_for_delete_from_project",:notice=>show_flash_message("Employee Is not deleted")		
		end	
	end

	#It Will show employees to add multiple employee with in the selected Project 
	def show_for_add_multiple_employee_in_the_project
		#@employee=Employee.find(:all, :conditions => ["id NOT IN (select employee_id from employee_projects where project_id=?)",params[:id]])
		@employee=Employee.show_employee_for_add_in_the_project(params[:id])
	end
	
	# Add Multiple employee with in the project
	def add_multiple_employee_with_in_the_project
		params[:employee].each do |e|
			@add_multiple_employee_with_in_the_project = EmployeeProject.new()
			@add_multiple_employee_with_in_the_project[:employee_id]=e
			@add_multiple_employee_with_in_the_project[:project_id]=params[:id]
			@add_multiple_employee_with_in_the_project.save
		end		
		redirect_to :action=>"show_for_add_multiple_employee_in_the_project",:controller=>:projects,:id=>params[:id]
	end
	
	# Delete porject
	def delete_complete_project
		@project=Project.find(:first,:conditions =>["id = ? ",params[:id]])
		if @project.destroy
			redirect_to admin_login_show_path 
		else 
			render :action=>"admin_login_show",:notice=>show_flash_message("Project Is not deleted")	
		end	
	end

end
