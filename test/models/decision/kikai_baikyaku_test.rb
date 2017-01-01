require 'test_helper'

class Decision::KikaiBaikyakuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::KikaiBaikyaku.new
    obj.entry_id = entries(:one).id
    obj.amount = 999
    obj.save!
    assert_equal obj.decision_making_id, Decision::KikaiBaikyaku::DECISION_MAKING_ID
  end

end
