class Decision::KanseiTounyuu < Decision::Decision
  DECISION_MAKING_ID = 3

  has_many  :details, {
    class_name: Decision::KanseiTounyuuDetail,
    foreign_key: :decision_decision_id,
    inverse_of: :kansei_tounyuu
  }
end
