class Bottles
  def song
    verses(99, 0)
  end

  def verses(beginning, ending)
    verses = []
    
    beginning.downto(ending) do |round|
      verses << verse(round)
    end

    verses.join("\n")
  end

  def verse(round)  
    first_line =  "#{quantitative_adjective(round)} #{pluralize_bottles(round)} of beer on the wall, #{quantitative_adjective(round)} #{pluralize_bottles(round)} of beer.\n"
    
    second_line = get_second_line(round)

    [first_line, second_line].map(&:capitalize).join
  end

  def get_second_line(round)
    if round == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take #{pronoun(round)} down and pass it around, #{quantitative_adjective(round - 1)} #{pluralize_bottles(round - 1)} of beer on the wall.\n"
    end
  end
  
  def pronoun(round)
    round == 1 ? "it" : "one"
  end

  def quantitative_adjective(round)
    round == 0 ? "no more" : "#{round}"
  end
  
  def pluralize_bottles(round)
    round == 1 ? "bottle" : "bottles"
  end
end