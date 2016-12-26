require 'test_helper'

class Decision::MerchandiserTest < ActiveSupport::TestCase

  test "意思決定IDが記録される" do
    un = Decision::Merchandiser.new
    un.entry_id = entries(:one).id
    un.save!
    assert_equal un.decision_making_id, Decision::Merchandiser::DECISION_MAKING_ID
  end

end
