class Decision::ZairyoukounyuuDetail < ApplicationRecord
  belongs_to :entry
  belongs_to :market

  belongs_to :zairyoukounyuu, {
    class_name: Decision::Zairyoukounyuu,
    foreign_key: 'decision_decision_id',
    inverse_of: :details
  }

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer
  validates :amount,   presence: true, numericality: :only_integer
end
