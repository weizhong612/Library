class Reader < ActiveRecord::Base

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :date_of_birth, presence: true
    validates :program, presence: true
    validates :reg_location, presence: true
    validates :reg_date, presence: true

	def self.search(query)
		where("first_name like ? OR last_name like ? OR id = ?" , "%#{query}%", "%#{query}%", query)
	end
	
end
