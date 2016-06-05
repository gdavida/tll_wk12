class Location < ActiveRecord::Base
	validates :branch_name, presence:true
	validates :iframe, presence:true

	has_many :boxes;
end
