require 'test_helper'

class Journal::ZairyouTest < ActiveSupport::TestCase

  test "勘定科目IDが記録される" do
    un = Journal::Zairyou.new
    un.entry_id = entries(:one).id
    un.price = 111
    un.quantity = 999
    un.amount = 9999
    un.save!
    assert_equal un.account_title_id, Journal::Zairyou::ACCOUNT_TITLE_ID
  end

end
