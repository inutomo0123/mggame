require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  def setup
    @hiramasa = clients(:hiramasa)
  end

  test "同じプロバイダーに、同じ名前のクライアントは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Client.create! provider_id: @hiramasa.provider_id, name: @hiramasa.name
    end
  end
end
