
require 'test_helper'

class StatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    post :create, status:statuses(:one).attributes.except("id")
    assert_redirected_to statuses_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:statuses(:one)
    assert_response :success
  end

  test "should get show" do
    get :show, id:statuses(:one)
    assert_response :success
  end

  test "should get update" do
    patch :update, id:statuses(:one), status:{name:"Something New"}
    assert_redirected_to status_path(statuses(:one))
  end

  test "should get destroy" do
    get :destroy, {'id' => statuses(:one).id}
    assert_redirected_to statuses_path
  end

end
