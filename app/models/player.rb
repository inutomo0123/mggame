class Player < ApplicationRecord
  belongs_to :client

  validates :name, presence: true, length:  { maximum: 50 },  uniqueness: { scope: [ :client_id, :name] }

end
