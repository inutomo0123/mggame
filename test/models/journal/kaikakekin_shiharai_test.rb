require 'test_helper'

class Journal::KaikakekinShiharaiTest < ActiveSupport::TestCase

  test "勘定科目IDが記録される" do
    un = Journal::KaikakekinShiharai.new
    un.entry_id = entries(:one).id
    un.amount = 9999
    un.save!
    assert_equal un.account_title_id, Journal::KaikakekinShiharai::ACCOUNT_TITLE_ID
  end

end
