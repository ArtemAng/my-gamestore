json.extract! game, :id, :name, :category_id, :game_studio_id, :price, :created_at, :updated_at
json.url game_url(game, format: :json)
