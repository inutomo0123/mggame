class Decision::Decision < ApplicationRecord
  belongs_to :entry
  belongs_to :decision_making

  validates :decision_making, presence: true

  before_validation { self.decision_making_id ||= self.class::DECISION_MAKING_ID }
end
