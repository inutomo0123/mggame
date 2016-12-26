class Journal::Uriage < Journal::Journal

  ACCOUNT_TITLE_ID = 7

  before_validation {
    self.account_title_id ||= ACCOUNT_TITLE_ID
    self.amoun = price * quantity
  }

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer

end
