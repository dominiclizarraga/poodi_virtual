class Bottles
  def verse(characters)
    song(characters)
  end

  def song(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, " +
    "#{number_of_bottles} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{number_of_bottles -= 1} #{singular_or_plural(number_of_bottles)} of beer on the wall.\n"
  end

  def singular_or_plural(number_of_bottles_remaining)
    number_of_bottles_remaining == 1 ? "bottle" : "bottles"
  end
end