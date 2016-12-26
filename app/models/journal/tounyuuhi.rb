class Journal::Tounyuuhi < Journal::Journal

  ACCOUNT_TITLE_ID = 13

  before_validation {
    self.account_title_id ||= ACCOUNT_TITLE_ID
    self.amount = price * quantity
  }

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer

end
