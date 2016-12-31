require 'test_helper'

class Decision::SetsubitoushiTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::Setsubitoushi.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::Setsubitoushi::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    st = Decision::Setsubitoushi.new entry_id: eid
    st.details.build entry_id: eid, machine_tool_id: 1, price: 20, quantity: 10, amount: 200
    st.details.build entry_id: eid, machine_tool_id: 2, price: 20, quantity: 20, amount: 400
    st.details.build entry_id: eid, machine_tool_id: 3, price: 20, quantity: 30, amount: 600
    st.save!
    st.reload
    assert_equal st.details.length,3
  end
end
