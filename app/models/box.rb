class Box < ActiveRecord::Base
	validates :name, presence:true
	validates :status_id, presence:true
	validates :location_id, presence:true

	has_many :toys
	belongs_to :age_group
	belongs_to :status
	belongs_to :location
	belongs_to :user
end
