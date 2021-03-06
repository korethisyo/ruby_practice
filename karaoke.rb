class KaraokeMachine
  # 音楽のコード”ドレミファソ”の英語表記 => "CDEFGAB" => 半音上がるのが"C#, D#, F#, G#, A#"の5音
  CODES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]

  def initialize(melody)
    @melody = melody
  end

  def transpose(num)
    # melodyで取得した文字列を1文字ずつ分けて、処理する。
    @melody.split(/(\w#?)/).map do |m|
      # 上記で分けた音楽のコードが、コードか空白等の文字かで条件分岐
      if /(\w#?)/.match(m)
        # []内で音階の変更の処理をし、処理したインデックスとCODESの対応するインデックスから変更後のコードを導き出す
        CODES[(CODES.index(m) + num) % 12]
      else
        m
      end
    end.join
  end
end


karaoke = KaraokeMachine.new("C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   ")
puts karaoke.transpose(5)
