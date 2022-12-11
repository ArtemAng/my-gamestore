class Game < ApplicationRecord
  belongs_to :category
  belongs_to :game_studio
end
