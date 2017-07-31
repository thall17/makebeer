class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :fermenter
      t.decimal :desired_og
      t.decimal :measured_og
      t.string :visibility
      t.string :type
      t.decimal :batch_size
      t.integer :boil_time
      t.date :date
      t.string :version
      t.decimal :measured_fg
      t.decimal :abv
      t.string :status
      t.integer :ibu
      t.string :color
      t.string :container

      t.timestamps
    end
  end
end
