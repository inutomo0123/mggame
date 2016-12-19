require 'test_helper'

class PlayerTest < ActiveSupport::TestCase

  def setup
    @oda = players(:oda)
  end

  test "同じクライアントに、同じ名前のプレーヤーは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Client.create! provider_id: @oda.client_id, name: @oda.name
    end
  end

end
