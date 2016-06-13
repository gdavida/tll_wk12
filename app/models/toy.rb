class Toy < ActiveRecord::Base
	validates :name, presence:true
	validates :manufacturer_suggested_age, presence:true
	validates :pieces, presence:true

	belongs_to :box
	belongs_to :age_group

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Toy.create! row.to_hash
		end
	end
end
