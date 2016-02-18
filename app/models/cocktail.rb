class Cocktail < ActiveRecord::Base
  has_many  :ingredients, through: :dose
  validates :description, confirmation: true
  validates :name, confirmation: true, presence: true
  validates allow_blank: false
end
