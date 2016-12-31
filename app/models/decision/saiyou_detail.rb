class Decision::SaiyouDetail < ApplicationRecord
  belongs_to :entry
  belongs_to :job

  belongs_to :saiyou, {
    class_name: Decision::Saiyou,
    foreign_key: 'decision_decision_id',
    inverse_of: :details
  }

  validates :number, presence: true, numericality: :only_integer
end
