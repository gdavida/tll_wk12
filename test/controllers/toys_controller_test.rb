require 'test_helper'

class ToysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    post :create, toy:toys(:one).attributes.except("id")
    assert_redirected_to toys_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:toys(:one)
    assert_response :success
  end

  test "should get show" do
    get :show, id:toys(:one)
    assert_response :success
  end

  test "should get update" do
    patch :update, id:toys(:one), toy:{name:"Something New"}
    assert_redirected_to toy_path(toys(:one))
  end

  test "should get destroy" do
    get :destroy, {'id' => toys(:one).id}
    assert_redirected_to toys_path
  end

end
