require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "test is valid" do
  	@status = statuses(:one)
    assert(@status.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if category name is not present" do
  	@status = statuses(:two)
  	@status.category = ""
  	refute(@status.valid?, "This should be invalid without a category name")
	end

  test "test should pass even if color is not present" do
  	@status = statuses(:two)
  	@status.color = ""
  	assert(@status.valid?, "This should be valid even without an color")
	end
end
