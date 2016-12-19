class Provider < ApplicationRecord
  has_many  :clients,   dependent: :destroy

  validates :name, presence: true, length:  { maximum: 50 },  uniqueness: true
end
