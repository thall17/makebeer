class RenamePublicInRecipes < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :public, :is_public
  end
end
