require 'test_helper'

class Decision::PacSeisanseiTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::PacSeisansei.new
    obj.entry_id = entries(:one).id
    obj.amount = 100
    obj.save!
    assert_equal obj.decision_making_id, Decision::PacSeisansei::DECISION_MAKING_ID
  end

end
