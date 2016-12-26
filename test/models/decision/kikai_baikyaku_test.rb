require 'test_helper'

class Decision::KikaiBaikyakuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::KikaiBaikyaku.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::KikaiBaikyaku::DECISION_MAKING_ID
  end

end
