require 'test_helper'

class Decision::KanseiTounyuuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::KanseiTounyuu.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::KanseiTounyuu::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    kt = Decision::KanseiTounyuu.new entry_id: eid
    kt.details.build entry_id: eid, operation: '完成', price: 20, quantity: 10, amount: 200
    kt.details.build entry_id: eid, operation: '投入', price: 20, quantity: 10, amount: 200
    kt.save!
    kt.reload
    assert_equal kt.details.length, 2
  end
end
