class AccountTitle < ApplicationRecord
  validates :symbol,  presence: true, length: { maximum: 1 }, uniqueness: true
  validates :name,    presence: true, length: { maximum: 50 }, uniqueness: true
end
