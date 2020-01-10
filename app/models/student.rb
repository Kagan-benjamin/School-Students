class Student < ApplicationRecord
    belongs_to :school 

    def self.search(search)
        where("name LIKE ? ", "%#{search}%") 
    end
end
