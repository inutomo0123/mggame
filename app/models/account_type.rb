class AccountType < ApplicationRecord
  validates :symbol,  presence: true, length: { maximum: 2 }, uniqueness: true
  validates :name,    presence: true, length: { maximum: 50 }, uniqueness: true
end
