class Reader < ActiveRecord::Base
	def self.search(query)
		where("first_name like ? OR last_name like ?" , "%#{query}%", "%#{query}%")
	end
end
