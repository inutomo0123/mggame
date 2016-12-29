class Decision::ZairyoukounyuuDetail < ApplicationRecord
  belongs_to :decision_decision
  belongs_to :market

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer
  validates :amount,    presence: true, numericality: :only_integer
end
