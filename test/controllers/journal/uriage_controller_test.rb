require 'test_helper'

class Journal::UriageControllerTest < ActionDispatch::IntegrationTest

  test "new" do
    get new_journal_uriage_path
    assert_response :success
  end

  test "create" do
    post journal_uriage_index_path, params: {
      journal_uriage: {
        price: 99.99,
        quantiry: 100,
        amount: 9999,
        remarks: 'ZZZZ'
      }
    }
    assert_response :redirect
  end
end
