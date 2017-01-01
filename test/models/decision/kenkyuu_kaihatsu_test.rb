require 'test_helper'

class Decision::KenkyuuKaihatsuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::KenkyuuKaihatsu.new
    obj.entry_id = entries(:one).id
    obj.amount = 999
    obj.save!
    assert_equal obj.decision_making_id, Decision::KenkyuuKaihatsu::DECISION_MAKING_ID
  end

end
