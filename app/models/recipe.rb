class Recipe < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true

end
