class KaraokeMachine
  # 音楽のコード”ドレミファソ”の英語表記 => "CDEFGAB" => 半音上がるのが"C#, D#, F#, G#, A#"の5音
  CODES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]

  def initialize(melody)
    @melody = melody
  end

  def array_of_melody
    # melodyで取得した値をcharsで配列に変えて、それぞれのメロディーコードがcodesの配列の何番に等しいか調べる
    @melody.chars.map do |m|
      CODES.index(m)
    end
  end

  def transpose(num)
    # CODESと比較したメロディーをキー変換していく
    changed_array = array_of_melody.map do |key|
      # CODESが0~11までしかなく、11のキーを１音上げると0に戻る仕組みなので、配列の番号とnumを足して11を超える場合と超えない場合に条件を分ける
      if key.to_i + num > 11
        (key.to_i + num) - 12
      else
        key.to_i + num
      end
    end.join
  end
end


karaoke = KaraokeMachine.new("C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   ")
puts karaoke.transpose(2)
