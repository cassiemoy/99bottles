class Bottles
  def verse(total_bottles)
    <<~VERSE
      #{total_bottles} bottles of beer on the wall, #{total_bottles} bottles of beer.
      Take one down and pass it around, #{total_bottles - 1} bottles of beer on the wall.
    VERSE
	end
end