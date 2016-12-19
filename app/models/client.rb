class Client < ApplicationRecord
  belongs_to :provider

  validates :name, presence: true, length:  { maximum: 50 },  uniqueness: { scope: [ :provider_id, :name] }

end
