require 'test_helper'

class RoundTest < ActiveSupport::TestCase
  def setup
    @round = rounds(:round_0_0_1)
  end

  test "同じトレーニングに同じラウンドは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Round.create! training_id: @round.training_id, number: @round.number
    end
  end

  test "ラウンドに0以下は追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Round.create! training_id: @round.training_id, number: 0
    end
  end


end
