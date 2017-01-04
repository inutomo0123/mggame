require 'test_helper'

class Journal::KikaikouguControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_kikaikougu_path
      assert_response :success
    end

    test "create" do
      post journal_kikaikougu_index_path, params: {
        journal_kikaikougu: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
