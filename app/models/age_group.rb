class AgeGroup < ActiveRecord::Base
	validates :age, presence: true
	validates :color, presence: true

	has_many :toys
	has_many :boxes

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			AgeGroup.create! row.to_hash
		end
	end
end
