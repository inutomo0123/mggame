require 'test_helper'

class Journal::UketoriHokenkinControllerTest < ActionDispatch::IntegrationTest

  test "new" do
    get new_journal_uketori_hokenkin_path
    assert_response :success
  end

  test "create" do
    post journal_uketori_hokenkin_index_path, params: {
      journal_uketori_hokenkin: {
        amount: 9999,
        remarks: 'ZZZZ'
      }
    }
    assert_response :redirect
  end
end
