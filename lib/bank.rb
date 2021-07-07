require '../lib/deep_freezable'

class Bank
  # クラスメソッドにとしてdeep_freezeメソッドを呼ぶ -> extend
  extend DeepFreezable

  CURRENCIES = deep_freeze({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end