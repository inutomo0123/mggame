require 'test_helper'

class Journal::KashitsukekinTest < ActiveSupport::TestCase

  test "勘定科目IDが記録される" do
    un = Journal::Kashitsukekin.new
    un.entry_id = entries(:one).id
    un.amount = 9999
    un.save!
    assert_equal un.account_title_id, Journal::Kashitsukekin::ACCOUNT_TITLE_ID
  end

end
