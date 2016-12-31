class Decision::SaiyouDetail < ApplicationRecord
  belongs_to :entry
  #belongs_to :decision_saiyou, foreign_key: 'decision_decision_id'
  belongs_to :decision, foreign_key: :decision_decision_id, inverse_of: :saiyou_details
  belongs_to :job

  accepts_nested_attributes_for :decision

  #accepts_nested_attributes_for :decision_decision

  validates :number, presence: true, numericality: :only_integer
end
