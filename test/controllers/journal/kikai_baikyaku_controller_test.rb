require 'test_helper'

class Journal::KikaiBaikyakuControllerTest < ActionDispatch::IntegrationTest

  test "new" do
    get new_journal_kikai_baikyaku_path
    assert_response :success
  end

  test "create" do
    post journal_kikai_baikyaku_index_path, params: {
      journal_kikai_baikyaku: {
        amount: 9999,
        remarks: 'ZZZZ'
      }
    }
    assert_response :redirect
  end
end
