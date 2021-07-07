require 'minitest/autorun'
require '../lib/team'
require '../lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値が正しいか
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    # 配列がfreezeしているか
    assert Team::COUNTRIES.frozen?
    # 配列の要素全部がfreezeしているか
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    # ハッシュの値が正しいか
    assert_equal({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'}, Bank::CURRENCIES)
    # ハッシュがfreezeしているか
    assert Bank::CURRENCIES.frozen?
    # ハッシュの要素全部がfreezeしているか
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end