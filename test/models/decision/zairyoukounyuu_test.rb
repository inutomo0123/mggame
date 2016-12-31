require 'test_helper'

class Decision::ZairyoukounyuuTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::Zairyoukounyuu.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::Zairyoukounyuu::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    zk = Decision::Zairyoukounyuu.new entry_id: eid
    zk.details.build entry_id: eid, market_id: 1, price: 20, quantity: 10, amount: 200
    zk.details.build entry_id: eid, market_id: 2, price: 20, quantity: 20, amount: 400
    zk.details.build entry_id: eid, market_id: 3, price: 20, quantity: 30, amount: 600
    zk.save!
    zk.reload
    assert_equal zk.details.length,3
  end
end
