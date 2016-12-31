class Decision::SetsubitoushiDetail < ApplicationRecord
  belongs_to :entry
  belongs_to :machine_tool

  belongs_to :setsubitoushi, {
    class_name: Decision::Setsubitoushi,
    foreign_key: 'decision_decision_id',
    inverse_of: :details
  }

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer
  validates :amount,   presence: true, numericality: :only_integer
end
