class Decision::Setsubitoushi < Decision::Decision
  DECISION_MAKING_ID = 2

  has_many  :details, {
    class_name: Decision::SetsubitoushiDetail,
    foreign_key: :decision_decision_id,
    inverse_of: :setsubitoushi
  }
end
