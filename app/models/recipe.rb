class Recipe < ApplicationRecord
  belongs_to :user

  # Name of recipe must be unique for each user
  validates :name, :uniqueness => {:scope => :user_id}
end
