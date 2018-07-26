class DogSitter < ApplicationRecord
	has_many :dogs, through: :dogsitterdog
	belongs_to :city
end
