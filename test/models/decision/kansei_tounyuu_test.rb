require 'test_helper'

class Decision::KanseiTounyuuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::KanseiTounyuu.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::KanseiTounyuu::DECISION_MAKING_ID
  end

end
