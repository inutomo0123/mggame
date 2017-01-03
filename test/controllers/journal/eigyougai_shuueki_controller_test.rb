require 'test_helper'

class Journal::EigyougaiShuuekiControllerTest < ActionDispatch::IntegrationTest

  test "new" do
    get new_journal_eigyougai_shuueki_path
    assert_response :success
  end

  test "create" do
    post journal_eigyougai_shuueki_index_path, params: {
      journal_eigyougai_shuueki: {
        amount: 9999,
        remarks: 'ZZZZ'
      }
    }
    assert_response :redirect
  end
end
