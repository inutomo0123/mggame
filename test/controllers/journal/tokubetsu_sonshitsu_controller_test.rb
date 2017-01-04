require 'test_helper'

class Journal::TokubetsuSonshitsuControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_tokubetsu_sonshitsu_path
      assert_response :success
    end

    test "create" do
      post journal_tokubetsu_sonshitsu_index_path, params: {
        journal_tokubetsu_sonshitsu: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
