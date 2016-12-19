require 'test_helper'

class TrainingTest < ActiveSupport::TestCase

  def setup
    @training = trainings(:training_0_0)
  end

  test "同じクライアント、同じ開催日、同じ名前のトレーニングは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Training.create! client_id: @training.client_id, do_at: @training.do_at, name: @training.name
    end
  end

end
