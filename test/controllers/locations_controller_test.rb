require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    post :create, location:locations(:one).attributes.except("id")
    assert_redirected_to locations_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:locations(:one)
    assert_response :success
  end

  test "should get show" do
    get :show, id:locations(:one)
    assert_response :success
  end

  test "should get update" do
    patch :update, id:locations(:one), location:{name:"Something New"}
    assert_redirected_to location_path(locations(:one))
  end

  test "should get destroy" do
    get :destroy, {'id' => locations(:one).id}
    assert_redirected_to locations_path
  end

end
