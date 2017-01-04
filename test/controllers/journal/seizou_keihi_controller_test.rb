require 'test_helper'

class Journal::SeizouKeihiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_seizou_keihi_path
      assert_response :success
    end

    test "create" do
      post journal_seizou_keihi_index_path, params: {
        journal_seizou_keihi: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
