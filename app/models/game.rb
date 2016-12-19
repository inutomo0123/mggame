class Game < ApplicationRecord
  belongs_to :round
  belongs_to :table

  has_many  :entries

  validates :round_id, uniqueness: { scope: [ :round_id, :table_id ] }
end
