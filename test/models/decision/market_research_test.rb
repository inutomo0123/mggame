require 'test_helper'

class Decision::MarketResearchTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    obj = Decision::MarketResearch.new
    obj.entry_id = entries(:one).id
    obj.price = 10
    obj.quantity = 1
    obj.amount = 10
    obj.save!
    assert_equal obj.decision_making_id, Decision::MarketResearch::DECISION_MAKING_ID
  end

end
