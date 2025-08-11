class Bottles
  def verse(characters)
    song(characters)
  end

  def song(number_of_bottles)
    "#{bottle_count_phrase(number_of_bottles)} of beer on the wall, " +
    "#{bottle_count_phrase(number_of_bottles)} of beer.\n" +
    "Take #{removal_pronoun(number_of_bottles -= 1)} down and pass it around, " +
    "#{bottle_count_phrase(number_of_bottles)} of beer on the wall.\n"
  end

  def bottle_count_phrase(number_of_bottles_remaining)
    if number_of_bottles_remaining == 0
      "no more bottles"
    elsif number_of_bottles_remaining == 1
      "#{number_of_bottles_remaining} bottle"
    else
      "#{number_of_bottles_remaining} bottles"
    end
  end

  def removal_pronoun(number_of_bottles)
    number_of_bottles >= 1 ? "one" : "it"
  end
end