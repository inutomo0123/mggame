require 'test_helper'

class Journal::KariirekinHensaiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_kariirekin_hensai_path
      assert_response :success
    end

    test "create" do
      post journal_kariirekin_hensai_index_path, params: {
        journal_kariirekin_hensai: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
