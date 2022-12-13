class Recipe < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: true
  validates :description, presence: true
end
