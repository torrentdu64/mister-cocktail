class Cocktail < ActiveRecord::Base
  has_many :dose, through: :dose
  validates :description, confirmation: true
  validates presence: true
end
