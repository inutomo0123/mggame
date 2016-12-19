require 'test_helper'

class ProviderTest < ActiveSupport::TestCase

  def setup
    @one = providers(:one)
  end

  test "同じ名前のプロバイダーは追加できない" do
    assert_raise (ActiveRecord::RecordInvalid) do
      Provider.create! name: @one.name
    end
  end
end
