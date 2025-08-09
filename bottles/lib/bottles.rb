class Bottles
  def verse(characters)
    song(characters)
  end

  def song(number_of_bottles)
    "#{singular_or_plural(number_of_bottles)} of beer on the wall, " +
    "#{singular_or_plural(number_of_bottles)} of beer.\n" +
    "Take #{it_or_one(number_of_bottles -= 1)} down and pass it around, " +
    "#{singular_or_plural(number_of_bottles)} of beer on the wall.\n"
  end

  def singular_or_plural(number_of_bottles_remaining)
    if number_of_bottles_remaining == 0
      "no more bottles"
    elsif number_of_bottles_remaining == 1
      "#{number_of_bottles_remaining} bottle"
    else
      "#{number_of_bottles_remaining} bottles"
    end
  end

  def it_or_one(number_of_bottles)
    if number_of_bottles > 1
      "one"
    elsif number_of_bottles == 1
      "one"
    else
      "it"
    end
  end
end