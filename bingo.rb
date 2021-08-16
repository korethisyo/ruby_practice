class Bingo
  def generate_card
    title = "BINGO".split(//).map do |bingo|
        bingo + "|"
    end.join

  end
end
