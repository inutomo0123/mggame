class Entry < ApplicationRecord
  belongs_to :game
  belongs_to :player

  validates :game_id, uniqueness: { scope: [ :game_id, :player_id ] }
end
