require 'test_helper'

class BoxesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    post :create, box:boxes(:one).attributes.except("id")
    assert_redirected_to boxes_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:boxes(:one)
    assert_response :success
  end

  test "should get show" do
    get :show, id:boxes(:one)
    assert_response :success
  end

  test "should get update" do
    patch :update, id:boxes(:one), box:{name:"Something New"}
    assert_redirected_to box_path(boxes(:one))
  end

  test "should get destroy" do
    get :destroy, {'id' => boxes(:one).id}
    assert_redirected_to boxes_path
  end

end
