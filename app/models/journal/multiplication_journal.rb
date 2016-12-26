class Journal::MultiplicationJournal < Journal::Journal
  before_validation { self.amount = price * quantity }

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer
end
