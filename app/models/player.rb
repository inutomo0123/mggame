class Player < ApplicationRecord
  belongs_to :client

  has_many  :entries

  validates :name, presence: true, length:  { maximum: 50 },  uniqueness: { scope: [ :client_id, :name] }
end
