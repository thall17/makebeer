class AddRatingToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :rating, :decimal
  end
end
