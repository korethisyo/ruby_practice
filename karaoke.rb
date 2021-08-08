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
    @melody.split(/(\w?)/).map do |mld|
      mld.index()
      
      if mld == 12
        mld - 12
      else
        mld + num
      end
    end
  end
end
