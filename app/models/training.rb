class Training < ApplicationRecord
  belongs_to :client

  validates :do_at, presence: true
  validates :name,  presence: true, length:  { maximum: 50 },  uniqueness: { scope: [ :client_id, :name] }
end
