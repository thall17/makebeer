class FixRecipeStatusColumnType < ActiveRecord::Migration[5.1]
  def up
    remove_column :recipes, :visibility
    add_column :recipes, :public, :boolean
  end
end
