class Decision::Koukoku < Decision::Decision
  DECISION_MAKING_ID = 5

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer
  validates :amount,   presence: true, numericality: :only_integer
end
