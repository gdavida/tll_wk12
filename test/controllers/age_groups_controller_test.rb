require 'test_helper'

class AgeGroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    post :create, age_group:age_groups(:one).attributes.except("id")
    assert_redirected_to age_groups_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:age_groups(:one)
    assert_response :success
  end

  test "should get show" do
    get :show, id:age_groups(:one)
    assert_response :success
  end

  test "should get update" do
    patch :update, id:age_groups(:one), age_group:{name:"Something New"}
    assert_redirected_to age_group_path(age_groups(:one))
  end

  test "should get destroy" do
    get :destroy, {'id' => age_groups(:one).id}
    assert_redirected_to age_groups_path
  end

end
