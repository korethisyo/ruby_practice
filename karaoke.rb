class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(num)
    # 音楽のコード”ドレミファソ”の英語表記 => "CDEFGAB" => 半音上がるのが"C#, D#, F#, G#, A#"の5音
    codes = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"].freeze
    # キーを変換した後のメロディー
    changed_melody = ""

    # melodyを\wで検索して、分けていく
    # melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   " => ["", "C", " ", "D", " ", "E", " ", "F", " ", "", "|", "E", " ", "D", " ", "C", " ", "", " ", "", " ", "", "|", "E", " ", "F", " ", "G", " ", "A", " ", "", "|", "G", " ", "F", " ", "E", " ", "", " ", "", " ", "", "|", "C", " ", "", " ", "", " ", "C", " ", "", " ", "", " ", "", "|", "C", " ", "", " ", "", " ", "C", " ", "", " ", "", " ", "", "|", "C", "", "C", "", "D", "", "D", "", "E", "", "E", "", "F", "", "F", "|", "E", " ", "D", " ", "C", " ", "", " ", "", " "]
    @melody.split(/(\w?)/).map do |m|
      # melodyで取得した文字列の単語一つひとつの数字として表したい
      m.index()

      if m + num <= 11
        m + num
      else
        (m + num) - 12
      end
    end
  end
end


karaoke = KaraokeMachine.new("C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   ")
puts karaoke.transpose(2)
