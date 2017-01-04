require 'test_helper'

class Journal::HanbaihiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_hanbaihi_path
      assert_response :success
    end

    test "create" do
      post journal_hanbaihi_index_path, params: {
        journal_hanbaihi: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
