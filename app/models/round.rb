class Round < ApplicationRecord
  belongs_to :training

  validates :number, presence:true, numericality: { greater_than: 0 },
    uniqueness: { scope: [:training_id, :number]}
end
