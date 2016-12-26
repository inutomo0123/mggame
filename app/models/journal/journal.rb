class Journal::Journal < ApplicationRecord
  belongs_to :entry
  belongs_to :account_title

  after_create { reload }
  before_validation { self.account_title_id ||= self.class::ACCOUNT_TITLE_ID }

  validates :amount, presence: true, numericality: :only_integer

end
