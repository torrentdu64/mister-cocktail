class Cocktail < ActiveRecord::Base
 validates :name, uniqueness: true, presence: true
 has_many :doses
 has_many :ingredients, through: :doses  # join table
end
