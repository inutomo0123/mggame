class Journal < ApplicationRecord

  URIKAKEKIN_NYUUKIN = 1
  KIKAI_BAIKYAKU = 2
  EIGYOUGAI_SHUUEKI = 3
  UKETORI_HOKENKIN = 4
  KARIIREKIN = 5
  SHIHONKIN = 6
  URIAGE = 7
  KASHITSUKEKIN = 11
  KIKAI_KOUGU = 12
  TOUNYUUHI = 13
  KANSEIHI = 14
  ROUMUHI = 15
  SEIZOU_KEIHI = 16
  HANBAIHI = 17
  IPPAN_KANRIHI = 18
  EIGYOUGAI_HIYOU = 19
  KENKYUU_KAIHATSUHI = 20
  ZAIRYOU = 21
  SEIHIN = 22
  TOKUBETSU_SONSHITSU = 23
  KARIIREKIN_HENSAI = 24
  HAITOU_NOUZEI = 25
  KAIKAKEKIN_SHIHARAI = 26

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
