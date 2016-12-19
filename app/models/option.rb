class Option < ApplicationRecord
  belongs_to :entry
  belongs_to :chip

  validates :entry_id, uniqueness: { scpe: [ :entry_id, :chip_id ] }
  validates :number, presence: true, numericality: { only_integer: true}
end
