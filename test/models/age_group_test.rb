require 'test_helper'

class AgeGroupTest < ActiveSupport::TestCase
  test "test is valid" do
  	@age_group = age_groups(:one)
    assert(@age_group.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if age is not present" do
  	@age_group = age_groups(:two)
  	@age_group.age = ""
  	refute(@age_group.valid?, "This should be invalid without a age")
	end

  test "test should fail if color is not present" do
  	@age_group = age_groups(:two)
  	@age_group.color = ""
  	refute(@age_group.valid?, "This should be invalid without a color")
	end
end
