require 'test_helper'

class BehaviorTest < ActiveSupport::TestCase

  test "行動を追加する" do
    obj = Behavior.new entry_id: entries(:one).id, behavior_type_id: 1
    obj.save!
  end

  test "子要素を追加する" do
    obj = Behavior.new entry_id: entries(:one).id, behavior_type_id: 1
    obj.children.build entry_id: entries(:one).id, behavior_type_id: 2
    obj.children.build entry_id: entries(:one).id, behavior_type_id: 3
    obj.save!
  end

end
