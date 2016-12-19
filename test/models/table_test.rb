require 'test_helper'

class TableTest < ActiveSupport::TestCase

  def setup
    @table = tables(:table_0_0_A)
  end

  test "同じトレーニングに同じテーブルは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Table.create! training_id: @table.training_id, symbol: @table.symbol
    end
  end

  test "シンボルにマルチバイトが使える" do
    Table.create! training_id: @table.training_id, symbol: "手"
    assert true
  end

end
