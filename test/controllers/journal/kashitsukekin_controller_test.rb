require 'test_helper'

class Journal::KashitsukekinControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_kashitsukekin_path
      assert_response :success
    end

    test "create" do
      post journal_kashitsukekin_index_path, params: {
        journal_kashitsukekin: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
