class Decision::Saiyou < Decision::Decision
  DECISION_MAKING_ID = 4

  #has_many  :details, class_name: Decision::SaiyouDetail, foreign_key: 'decision_decision_id'
  #accepts_nested_attributes_for :details
end
