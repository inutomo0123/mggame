class Risk < ApplicationRecord
  validates :number,  presence: true,
    numericality: { greater_than: 0 }, uniqueness: true
  validates :name,    presence: true, length: { maximum: 50 }, uniqueness: true
end
