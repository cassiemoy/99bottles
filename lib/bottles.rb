class Bottles
  def song
    verses(99, 0)
  end

  def verses(beginning, ending)
    verses = []
    round = beginning
    
    while round >= ending do
      verses << verse(round)
      round = round - 1
    end

    verses.join("\n")
  end

  def verse(count)  
    first_line =  "#{quantitative_adjective(count)} #{pluralize_bottles(count)} of beer on the wall, #{quantitative_adjective(count)} #{pluralize_bottles(count)} of beer.\n"
    
    second_line = get_second_line(count)

    [first_line, second_line].map(&:capitalize).join
  end

  def get_second_line(count)
    if count == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take #{pronoun(count)} down and pass it around, #{quantitative_adjective(count - 1)} #{pluralize_bottles(count - 1)} of beer on the wall.\n"
    end
  end
  
  def pronoun(count)
    count == 1 ? "it" : "one"
  end

  def quantitative_adjective(count)
    count == 0 ? "no more" : "#{count}"
  end
  
  def pluralize_bottles(count)
    count == 1 ? "bottle" : "bottles"
  end
end