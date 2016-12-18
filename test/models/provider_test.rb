require 'test_helper'

class ProviderTest < ActiveSupport::TestCase

  test "同じ名前のプロバイダーは追加できない" do
    assert_no_difference 'Provider.count' do
      Provider.create name: providers(:one).name
    end
  end

end
