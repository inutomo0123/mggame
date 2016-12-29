class Decision::Zairyoukounyuu < Decision::Decision
  DECISION_MAKING_ID = 1

  has_many  :details, class_name: Decision::ZairyoukounyuuDetail, foreign_key: 'decision_decision_id'
  accepts_nested_attributes_for :details
  
end
