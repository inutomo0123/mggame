class Client < ApplicationRecord
  belongs_to :provider

  has_many  :players, dependent: :destroy
  has_many  :trainings, dependent: :destroy

  validates :name, presence: true, length:  { maximum: 50 },  uniqueness: { scope: [ :provider_id, :name] }
end
