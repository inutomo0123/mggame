class Training < ApplicationRecord
  belongs_to :client

  has_many  :tables
  has_many  :rounds

  validates :do_at, presence: true
  validates :name,  presence: true, length:  { maximum: 50 },  uniqueness: { scope: [ :client_id, :name] }
end
