class Journal < ApplicationRecord

  URIKAKEKIN_NYUUKIN_ID = 1

  belongs_to :entry
  belongs_to :account_title

  before_save :calc_amount
  after_create      :sync_serial

  validates :price,    presence: true, numericality: :only_integer
  validates :quantity, presence: true, numericality: :only_integer

  # トリガーで採番されたシリアルを取り込む
  def sync_serial
    reload
  end

  # 単価と数量から金額を計算する
  def calc_amount
    self.amount = price * quantity
  end
end
