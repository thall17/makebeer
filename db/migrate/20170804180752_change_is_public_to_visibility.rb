class ChangeIsPublicToVisibility < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :is_public
    add_column :recipes, :visibility, :string, :default => "Private"
  end
end
