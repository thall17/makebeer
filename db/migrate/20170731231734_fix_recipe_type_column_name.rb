class FixRecipeTypeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :type, :brew_type
  end
end
