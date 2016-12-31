require 'test_helper'

class Decision::SaiyouTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::Saiyou.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::Saiyou::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    obj = Decision::Saiyou.new
    obj.entry_id =  eid
    obj.saiyou_details.build entry_id: eid, job_id: 1, number: 3
    obj.saiyou_details.build entry_id: eid, job_id: 2, number: 5
    obj.save!
    assert true

  end

end
