require 'test_helper'

class Decision::SetsubitoushiTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::Setsubitoushi.new
    obj.entry_id = entries(:one).id
    obj.amount = 999
    obj.save!
    assert_equal obj.decision_making_id, Decision::Setsubitoushi::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    obj = Decision::Setsubitoushi.new entry_id: eid
    obj.details.build entry_id: eid, machine_tool_id: 1, price: 20, quantity: 10, amount: 200
    obj.details.build entry_id: eid, machine_tool_id: 2, price: 20, quantity: 20, amount: 400
    obj.details.build entry_id: eid, machine_tool_id: 3, price: 20, quantity: 30, amount: 600
    obj.amount = 999
    obj.save!
    obj.reload
    assert_equal obj.details.length,3
  end
end
