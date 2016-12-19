require 'test_helper'

class GameTest < ActiveSupport::TestCase

  def setup
    @game = games(:game_0_0_1_A)
  end

  test "同じラウンド同じテーブルに、同じゲームは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Game.create! round_id: @game.round_id, table_id: @game.table_id
    end
  end

end
