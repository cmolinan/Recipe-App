class Food < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'  
  validates :name, presence: true
end
