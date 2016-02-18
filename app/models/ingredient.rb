class Ingredient < ActiveRecord::Base
  has_many :cocktail
  validates :name, confirmation: true
  validates presence: true
end
