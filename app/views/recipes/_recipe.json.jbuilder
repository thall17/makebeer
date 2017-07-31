json.extract! recipe, :id, :name, :fermenter, :desired_og, :measured_og, :visibility, :type, :batch_size, :boil_time, :date, :version, :measured_fg, :abv, :status, :ibu, :color, :container, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
