require '../lib/deep_freezable'

class Team
  # クラスメソッドにとしてdeep_freezeメソッドを呼ぶ -> extend
  extend DeepFreezable

  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end