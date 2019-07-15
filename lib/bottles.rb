class Bottles
  def verse(count)
    new_count = count - 1
    
    first_line =  "#{quantitative_adjective(count)} #{pluralize_bottles(count)} of beer on the wall, #{quantitative_adjective(count)} #{pluralize_bottles(count)} of beer.\n"
    
    second_line = "Take #{pronoun(count)} down and pass it around, #{quantitative_adjective(new_count)} #{pluralize_bottles(new_count)} of beer on the wall.\n"

    [first_line, second_line].map(&:capitalize).join
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