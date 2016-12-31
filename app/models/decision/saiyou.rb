class Decision::Saiyou < Decision::Decision
  DECISION_MAKING_ID = 4

  has_many  :details, {
    class_name: Decision::SaiyouDetail,
    foreign_key: :decision_decision_id,
    inverse_of: :saiyou
  }
end
