class Cocktail < ActiveRecord::Base
  has_many :doses

  validates :name, presence: true, uniqueness: true
  # validates :cocktail_id, uniqueness: {scope: [ :dose_id, :ingredient_id]}
end
