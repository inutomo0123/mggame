class Decision::Decision < ApplicationRecord
  belongs_to :entry
  belongs_to :decision_making

  has_many :saiyou_details, class_name: Decision::SaiyouDetail, foreign_key: :decision_decision_id, inverse_of: :decision

  accepts_nested_attributes_for :saiyou_details

  after_create { reload }
  before_validation { self.decision_making_id ||= self.class::DECISION_MAKING_ID }

end
