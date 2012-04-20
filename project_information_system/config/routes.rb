ProjectInformationSystem::Application.routes.draw do

  resources :employee_images

  resources :comments

  resources :project_daily_descriptions

  resources :projects

  resources :employees

  get "login/index"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "login#loginpage"

 match "loginpage"=>"login#loginpage"
match "/login_check"=>"login#login_check"
match "/admin_login_show"=>"projects#admin_login_show"
match "/employee_login_show"=>"employees#employee_login_show"
match "/change_password"=>"login#change_password"
match "/destroy"=>"login#destroy"
match "employee_on_project"=>"employees#employee_on_project"
match "employee_on_project/:id"=>"employees#employee_on_project",:as=>:employee_project
match "/take_password"=>"login#take_password"
match "employee_project_daily_description"=>"employees#employee_project_daily_description"
match "employee_project_daily_description/:id"=>"employees#employee_project_daily_description",:as=>:employee_project_daily_description
match "all_employee_on_project"=>"employees#all_employee_on_project"
match "show_employee_for_add_in_the_project/:id"=>"projects#show_employee_for_add_in_the_project",:as=>:show_employee_for_add_in_the_project
match "add_employee_with_in_the_project"=>"projects#add_employee_with_in_the_project"
match "show_employee_for_delete_from_project/:id"=>"projects#show_employee_for_delete_from_project", :as=>:show_employee_for_delete_from_project
match "delete_employee_from_project"=>"projects#delete_employee_from_project"
match"show_for_add_multiple_employee_in_the_project/:id"=>"projects#show_for_add_multiple_employee_in_the_project",:as=>:show_for_add_multiple_employee_in_the_project
match "add_multiple_employee_with_in_the_project"=>"projects#add_multiple_employee_with_in_the_project"
match "delete_complete_project/:id"=>"projects#delete_complete_project", :as=>:delete_complete_project
match "delete_employee/:id"=>"employees#delete_employee", :as=>:delete_employee
match "upload"=>"upload#uploadFile"
match "delete_image/:id"=>"employees#delete_image", :as=>:delete_image
match "show_query"=>"employees#show_query"
match "add_query"=>"employees#add_query"
match "add_question"=>"employees#add_question"
match "show_answer/:id"=>"employees#show_answer",:as=>:show_answer
match "add_answer/:id"=>"employees#add_answer",:as=>:add_answer
match "submit_answer/:id"=>"employees#submit_answer#:id",:as=>:submit_answer ,:via=>[:post]
match "admin_view_description/*project_id/*employee_id"=>"employees#admin_view_description",:as=>:admin_view_description
match "add_project_daily_description/:id"=>"employees#add_project_daily_description",:as=>:add_project_daily_description
match "show_for_add_daily_description/:id"=>"employees#show_for_add_daily_description",:as=>:show_for_add_daily_description
match "delete_query/:id"=>"employees#delete_query",:as=>:delete_query
match "delete_answer_for_query/*id/*project_id"=>"employees#delete_answer_for_query",:as=>:delete_answer_for_query
match "delete_selected_description/*project_id/*id"=>"employees#delete_selected_description",:as=>:delete_selected_description
match "browse_image_plugin"=>"upload#browse_image_plugin"
match "add_image_by_plugin"=>"upload#add_image_by_plugin"
match "show_profile_for_plugin"=>"upload#show_profile_for_plugin"
match "send_mail"=>"emailer#send_mail"
match "sendmail"=>"emailer#sendmail"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
