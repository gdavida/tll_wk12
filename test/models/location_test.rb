require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "test is valid" do
  	@location = locations(:one)
    assert(@location.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if branch name is not present" do
  	@location = locations(:two)
  	@location.branch_name = ""
  	refute(@location.valid?, "This should be invalid without a branch name")
	end

  test "test should pass even if address is not present" do
  	@location = locations(:two)
  	@location.address = ""
  	assert(@location.valid?, "This should be valid even without an address")
	end

  test "test should pass even if contact name is not present" do
  	@location = locations(:two)
  	@location.contact_name = ""
  	assert(@location.valid?, "This should be valid even without a contact name")
	end
end
