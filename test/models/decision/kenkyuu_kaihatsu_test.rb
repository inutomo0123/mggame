require 'test_helper'

class Decision::KenkyuuKaihatsuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::KenkyuuKaihatsu.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::KenkyuuKaihatsu::DECISION_MAKING_ID
  end

end
