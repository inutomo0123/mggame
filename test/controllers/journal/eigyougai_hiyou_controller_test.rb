require 'test_helper'

class Journal::EigyougaiHiyouControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_eigyougai_hiyou_path
      assert_response :success
    end

    test "create" do
      post journal_eigyougai_hiyou_index_path, params: {
        journal_eigyougai_hiyou: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
