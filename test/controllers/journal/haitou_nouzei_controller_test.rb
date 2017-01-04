require 'test_helper'

class Journal::HaitouNouzeiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_haitou_nouzei_path
      assert_response :success
    end

    test "create" do
      post journal_haitou_nouzei_index_path, params: {
        journal_haitou_nouzei: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end

end
