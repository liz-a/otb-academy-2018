def nums_to_words_recursive(number)  

  tricky_nums = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 15 => "fifteen", 18 => "eighteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 80 => "eighty" }

  return "" if number == 0

  return nums_to_words_recursive(number - (number % 10)) + tricky_nums[number] if number < 9

  return nums_to_words_recursive(number - (number % 20)) + (tricky_nums[number] || "#{tricky_nums[number -10]}teen") if number < 20

  return (tricky_nums[number] || "#{tricky_nums[number/10]}ty") if (number < 100 && number % 10 == 0)

  return "#{nums_to_words_recursive(number - (number % 10))}-#{nums_to_words_recursive(number - ((number/10) * 10))}" if number < 100 

  return "#{nums_to_words_recursive(number / 100)} hundred" if (number < 1000 && number % 100 == 0)

  return "#{nums_to_words_recursive(number / 100)} hundred and #{nums_to_words_recursive(number - ((number/100) * 100))}" if number < 1000

  return "#{nums_to_words_recursive(number / 1000)} thousand" if (number < 1000000 && number % 1000 == 0)

  return "#{nums_to_words_recursive(number / 1000)} thousand, #{nums_to_words_recursive(number - ((number/1000) * 1000))}" if number < 1000000

  return "#{nums_to_words_recursive(number / 1000000)} million" if (number >= 1000000 && number % 1000000 == 0)

  return "#{nums_to_words_recursive(number / 1000000)} million, #{nums_to_words_recursive(number - ((number/1000000) * 1000000))}"

end