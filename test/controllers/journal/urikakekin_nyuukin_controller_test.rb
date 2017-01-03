require 'test_helper'

class Journal::UrikakekinNyuukinControllerTest < ActionDispatch::IntegrationTest

  test "new" do
    get new_journal_urikakekin_nyuukin_path
    assert_response :success
  end

  test "create" do
    post journal_urikakekin_nyuukin_index_path, params: {
      journal_urikakekin_nyuukin: {
        amount: 9999,
        remarks: 'ZZZZ'
      }
    }
    assert_response :redirect
  end
end
