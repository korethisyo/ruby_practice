class KaraokeMachine
  # 音楽のコード”ドレミファソ”の英語表記 => "CDEFGAB" => 半音上がるのが"C#, D#, F#, G#, A#"の5音
  CODES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]

  def initialize(melody)
    @melody = melody
  end

  def transpose(num)
    # melodyで取得した文字列を1文字ずつ分けて、処理する。
    @melody.split(/(\w?)/).map do |m|
      if m.match(/(\w?)/)
        m
      else
        (CODES.index(m) + num) - 12
      end
    end.join
  end
end


karaoke = KaraokeMachine.new("C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   ")
puts karaoke.transpose(2)
