require 'test_helper'

class Decision::SaiyouTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::Saiyou.new
    obj.entry_id = entries(:one).id
    obj.amount = 100
    obj.save!
    assert_equal obj.decision_making_id, Decision::Saiyou::DECISION_MAKING_ID
  end

  test "詳細が記録される" do
    eid = entries(:one).id
    obj = Decision::Saiyou.new
    obj.entry_id =  eid
    obj.details.build entry_id: eid, job_id: 1, number: 3
    obj.details.build entry_id: eid, job_id: 2, number: 5
    obj.amount = 100
    obj.save!
    assert true
  end

end
