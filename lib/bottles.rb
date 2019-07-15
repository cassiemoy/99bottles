class Bottles
  def verse(count)
    new_count = count - 1
    
    <<~VERSE
      #{count} bottles of beer on the wall, #{count} bottles of beer.
      Take one down and pass it around, #{new_count} #{pluralize_bottles(new_count)} of beer on the wall.
    VERSE
  end

  def pluralize_bottles(count)
    count == 1 ? "bottle" : "bottles"
  end
end