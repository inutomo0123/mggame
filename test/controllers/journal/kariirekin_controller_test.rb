require 'test_helper'

class Journal::KariirekinControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_kariirekin_path
      assert_response :success
    end

    test "create" do
      post journal_kariirekin_index_path, params: {
        journal_kariirekin: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
