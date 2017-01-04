require 'test_helper'

class Journal::KaikakekinShiharaiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_kaikakekin_shiharai_path
      assert_response :success
    end

    test "create" do
      post journal_kaikakekin_shiharai_index_path, params: {
        journal_kaikakekin_shiharai: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
