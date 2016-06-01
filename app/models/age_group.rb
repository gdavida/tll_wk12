class AgeGroup < ActiveRecord::Base
	validates :age, presence: true
	validates :color, presence: true

	has_many :toys
	has_many :boxes
end
