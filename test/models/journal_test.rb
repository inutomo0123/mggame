require 'test_helper'

class JournalTest < ActiveSupport::TestCase

  def setup
    @one = journals(:one)
  end

  test "エントリーID毎にシリアルが振られる" do
    current = Journal.where(entry_id: @one.entry_id).maximum(:serial)
    added = Journal.create! entry_id:@one.entry_id, account_title_id: 5, price: 98, quantity: 15
    assert_equal current +1 , added.serial
  end


  test "金額が単価と数量から正しく計算される" do
    added = Journal.create! entry_id:@one.entry_id, account_title_id: 6, price: 98, quantity: 15
    assert added.amount, 98 * 15
  end

end
