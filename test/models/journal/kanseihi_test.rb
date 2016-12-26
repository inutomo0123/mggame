require 'test_helper'

class Journal::KanseihiTest < ActiveSupport::TestCase

  test "勘定科目IDが記録される" do
    un = Journal::Kanseihi.new
    un.entry_id = entries(:one).id
    un.price = 111
    un.quantity = 999
    un.amount = 9999
    un.save!
    assert_equal un.account_title_id, Journal::Kanseihi::ACCOUNT_TITLE_ID
  end

  test "単価と数量から金額が記録される" do
    un = Journal::Kanseihi.new
    un.entry_id = entries(:one).id
    un.price = 111
    un.quantity = 999
    un.amount = 9999
    un.save!
    assert_equal un.amount, 111 * 999
  end

end
