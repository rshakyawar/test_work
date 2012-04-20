require 'test_helper'

class ProjectDailyDescriptionsControllerTest < ActionController::TestCase
  setup do
    @project_daily_description = project_daily_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_daily_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_daily_description" do
    assert_difference('ProjectDailyDescription.count') do
      post :create, :project_daily_description => @project_daily_description.attributes
    end

    assert_redirected_to project_daily_description_path(assigns(:project_daily_description))
  end

  test "should show project_daily_description" do
    get :show, :id => @project_daily_description.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_daily_description.to_param
    assert_response :success
  end

  test "should update project_daily_description" do
    put :update, :id => @project_daily_description.to_param, :project_daily_description => @project_daily_description.attributes
    assert_redirected_to project_daily_description_path(assigns(:project_daily_description))
  end

  test "should destroy project_daily_description" do
    assert_difference('ProjectDailyDescription.count', -1) do
      delete :destroy, :id => @project_daily_description.to_param
    end

    assert_redirected_to project_daily_descriptions_path
  end
end
