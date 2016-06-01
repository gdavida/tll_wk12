require 'test_helper'

class BoxTest < ActiveSupport::TestCase
  test "test is valid" do
  	@box = boxes(:one)
    assert(@box.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if name is not present" do
  	@box = boxes(:one)
  	@box.name = ""
  	refute(@box.valid?, "This should be invalid without aname")
	end

  test "test should pass even if age group id is not present" do
  	@box = boxes(:two)
  	@box.age_group = ""
  	assert(@box.valid?, "This should be valid even without an age group id")
	end

  test "test should fail if status id is not present" do
  	@box = boxes(:two)
  	@box.status_id = ""
  	refute(@box.valid?, "This should be invalid without a status id")
	end

  test "test should pass even if user id is not present" do
  	@box = boxes(:two)
  	@box.user_id = ""
  	assert(@box.valid?, "This should be valid even without an user id")
	end

  test "test should fail if location id is not present" do
  	@box = boxes(:two)
  	@box.location_id = ""
  	refute(@box.valid?, "This should be invalid without a location id")
	end
end
