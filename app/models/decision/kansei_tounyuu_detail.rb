class Decision::KanseiTounyuuDetail < ApplicationRecord
  belongs_to :entry

  belongs_to :kansei_tounyuu, {
    class_name: Decision::KanseiTounyuu,
    foreign_key: 'decision_decision_id',
    inverse_of: :details
  }

  validates :operation, presence: true, length: { maximum: 50 }
  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer
  validates :amount,   presence: true, numericality: :only_integer
end
