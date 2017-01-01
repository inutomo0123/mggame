require 'test_helper'

class Decision::KanseiTounyuuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::KanseiTounyuu.new
    obj.entry_id = entries(:one).id
    obj.amount = 999
    obj.save!
    assert_equal obj.decision_making_id, Decision::KanseiTounyuu::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    obj = Decision::KanseiTounyuu.new entry_id: eid
    obj.details.build entry_id: eid, operation: '完成', price: 20, quantity: 10, amount: 200
    obj.details.build entry_id: eid, operation: '投入', price: 20, quantity: 10, amount: 200
    obj.amount = 999
    obj.save!
    obj.reload
    assert_equal obj.details.length, 2
  end
end
