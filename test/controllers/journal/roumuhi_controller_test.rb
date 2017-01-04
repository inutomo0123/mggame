require 'test_helper'

class Journal::RoumuhiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_roumuhi_path
      assert_response :success
    end

    test "create" do
      post journal_roumuhi_index_path, params: {
        journal_roumuhi: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
