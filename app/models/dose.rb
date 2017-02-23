class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end


# Use scope to validate the uniqueness of a pair of ids.
