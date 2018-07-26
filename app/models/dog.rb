class Dog < ApplicationRecord
	has_many :dogsitters, through: :dogsitterdog
	belongs_to :city
end
