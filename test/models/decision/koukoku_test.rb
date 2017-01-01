require 'test_helper'

class Decision::KoukokuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::Koukoku.new
    obj.entry_id = entries(:one).id
    obj.price = 10
    obj.quantity = 5
    obj.amount = 50
    obj.save!
    assert_equal obj.decision_making_id, Decision::Koukoku::DECISION_MAKING_ID
  end

end
