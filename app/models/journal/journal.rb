class Journal::Journal < ApplicationRecord
  belongs_to :entry
  belongs_to :account_title

  after_create :sync_serial

  validates :amount, presence: true, numericality: :only_integer

  # トリガーで採番されたシリアルを取り込む
  def sync_serial
    reload
  end

end
