# カタカナ文字列の配列を渡すと、ア段の音別にグループ分けした配列を返すプログラムを作成せよ。
# 各要素は50音順にソートもすること。

class NameIndex
  # 配列の要素の個数は不特定なので、＊を引数につけて配列に
  def self.create_index(*names)
    names.map{
     |name| [] << name
    }
  end
end

puts NameIndex.create_index("タカダ", "タニ", "シモ")
