require 'test_helper'

class BehaviorTest < ActiveSupport::TestCase

  test "子要素が取得できる" do
    assert_equal Behavior.find(behaviors(:one).id).children[0], behaviors(:two)
  end

  test "親要素が取得できる" do
    assert_equal Behavior.find(behaviors(:two).id).parent, behaviors(:one)
  end

end
