# カタカナ文字列の配列を渡すと、ア段の音別にグループ分けした配列を返すプログラムを作成せよ。
# 各要素は50音順にソートもすること。

class NameIndex
  # 50音で分別するときにア~ンの文字が必要
  KANAMOJI = ('ア'..'ン').to_a
  # ア段でグループ分けの際に必要
  A_SOUNDS = ["ア", "カ", "サ", "タ", "ナ", "ハ", "マ", "ヤ", "ラ", "ワ"]

  # 配列の要素の個数は不特定なので、＊を引数につけて配列に
  def self.create_index(*names)
    array = names.map {
     |name| [] << name
    }

    # array.map {
    #   |a| a.match(KANAMOJI)
    # }
  end
end

puts NameIndex.create_index("タカダ", "タニ", "シモ")
