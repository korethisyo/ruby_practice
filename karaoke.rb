class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(num)
    # 音楽のコード”ドレミファソ”の英語表記 => "CDEFGAB" => 半音上がるのが"C#, D#, F#, G#, A#"の5音
    codes = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
  end
end
