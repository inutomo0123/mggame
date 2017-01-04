require 'test_helper'

class Journal::ShihonkinControllerTest < ActionDispatch::IntegrationTest

    test "new" do
      get new_journal_shihonkin_path
      assert_response :success
    end

    test "create" do
      post journal_shihonkin_index_path, params: {
        journal_shihonkin: {
          price: 9.99,
          quantity: 1000,
          amount: 9999,
          remarks: 'ZZZZ'
        }
      }
      assert_response :redirect
    end
end
