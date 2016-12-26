class Decision::Decision < ApplicationRecord
  belongs_to :entry
  belongs_to :decision_making

  after_create { reload }
  before_validation { self.decision_making_id ||= self.class::DECISION_MAKING_ID }

end
