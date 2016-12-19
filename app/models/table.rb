class Table < ApplicationRecord
  belongs_to :training

  validates :symbol, presence:true, length: { maximum: 1 },
    uniqueness: { scope: [:training_id, :symbol]}

end
