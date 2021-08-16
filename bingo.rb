class Bingo
  def self.generate_card
    title = "BINGO".split(//).map do |bingo|
      sprintf("%3s", bingo)
    end.join(" | ")
  end
end

puts Bingo.generate_card
