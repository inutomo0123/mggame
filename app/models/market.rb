class Market < ApplicationRecord
  validates :symbol,  presence: true, length: { maximum: 2 }, uniqueness: true
  validates :name,    presence: true, length: { maximum: 50 }, uniqueness: true
  validates :volume,  presence: true, numericality: :integer_only
  validates :material_price,  presence: true, numericality: :integer_only
  validates :max_bid_price,   presence: true, numericality: :integer_only
end
