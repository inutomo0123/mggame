require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "現在のエントリーが取得できる" do
    entry = current_entry
    assert_equal entry.id, entries(:two).id
  end
end
