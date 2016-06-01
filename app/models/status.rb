class Status < ActiveRecord::Base
	validates :category, presence:true

	has_many :boxes
end
