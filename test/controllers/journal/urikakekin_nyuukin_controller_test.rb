require 'test_helper'

class Journal::UrikakekinNyuukinControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get journal_urikakekin_nyuukin_index_path
    assert_equal 200, response.status
  end

  test "create" do
    post journal_urikakekin_nyuukin_index_path, journal_urikakekin_nyuukin: { amount: 100 }
    assert_equal 200, response.status
  end
end
