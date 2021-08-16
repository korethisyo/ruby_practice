class Bingo
  def self.generate_card
    title = "BINGO".split(//).map do |bingo|
      # 1行目のBINGOを右詰め
      sprintf("%3s", bingo)
      # 各文字の右側に"｜"を出力 => bingo + " | "で記述していたときは、"O"の後にも"|"が出力されていた。joinの場合、文字を区切る箇所のみで"|"
    end.join(" | ")

    # 75の数を持つ配列をさらに15個ずつの配列に分ける
    numbers = (1..75).each_slice(15).map do |n|
      n.sample(5)
    end
    
    # numbers配列の2個目の配列の2番目の数値の箇所を空白にし、ビンゴカードの真ん中にする
    numbers[2][2] = " "
    
    
  end
end

puts Bingo.generate_card
