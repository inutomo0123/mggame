require 'test_helper'

class Journal::IppanKanrihiControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_ippan_kanrihi_path
      assert_response :success
    end

    test "create" do
      post journal_ippan_kanrihi_index_path, params: {
        journal_ippan_kanrihi: {
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
