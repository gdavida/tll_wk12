require 'test_helper'

class ToyTest < ActiveSupport::TestCase
  test "test is valid" do
  	@toy = toys(:one)
    assert(@toy.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if name is not present" do
  	@toy = toys(:two)
  	@toy.name = ""
  	refute(@toy.valid?, "This should be invalid without a name")
	end

  test "test should fail if manufacturer suggested age is not present" do
  	@toy = toys(:two)
  	@toy.manufacturer_suggested_age = ""
  	refute(@toy.valid?, "This should be invalid without a manufacturer suggested age")
	end

  test "test should fail if pieces is not present" do
  	@toy = toys(:two)
  	@toy.pieces = ""
  	refute(@toy.valid?, "This should be invalid without a pieces")
	end

  test "test should pass even if box id is not present" do
  	@toy = toys(:two)
  	@toy.box_id = ""
  	assert(@toy.valid?, "This should be valid even without an box_id")
	end
	
  test "test should pass even if brand is not present" do
  	@toy = toys(:two)
  	@toy.brand = ""
  	assert(@toy.valid?, "This should be valid even without an brand")
	end
	
  test "test should pass even if age_group_id is not present" do
  	@toy = toys(:two)
  	@toy.age_group_id = ""
  	assert(@toy.valid?, "This should be valid even without an age_group_id")
	end
	
  test "test should pass even if upc is not present" do
  	@toy = toys(:two)
  	@toy.upc = ""
  	assert(@toy.valid?, "This should be valid even without an upc")
	end
	
  test "test should pass even if website is not present" do
  	@toy = toys(:two)
  	@toy.website = ""
  	assert(@toy.valid?, "This should be valid even without an website")
	end
	
  test "test should pass even if purchased_from is not present" do
  	@toy = toys(:two)
  	@toy.purchased_from = ""
  	assert(@toy.valid?, "This should be valid even without an purchased_from")
	end
	
  test "test should pass even if price is not present" do
  	@toy = toys(:two)
  	@toy.price = ""
  	assert(@toy.valid?, "This should be valid even without an price")
	end
	
  test "test should pass even if toy_image is not present" do
  	@toy = toys(:two)
  	@toy.toy_image = ""
  	assert(@toy.valid?, "This should be valid even without an toy_image")
	end
end
