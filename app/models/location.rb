class Location < ActiveRecord::Base
	validates :branch_name, presence:true
	validates :iframe, presence:true

	has_many :boxes;

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Location.create! row.to_hash
		end
	end
end
