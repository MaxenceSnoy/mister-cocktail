class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail, :ingredient,  presence: true
  # validates [:cocktail, :ingredient], uniqueness: true
end
