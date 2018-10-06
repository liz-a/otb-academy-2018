def nums_to_words_recursive(number)  
    return "zero" if number == 0
  
    def get_0_to_99(num)
      tricky_nums = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety" }
      return tricky_nums[num] if tricky_nums[num]
      return "#{tricky_nums[(num / 10) * 10]}-#{tricky_nums[num % 10]}" if num > 20
    end
    
    return get_0_to_99(number) if number < 100 
  
    def again(n, divisor, descriptor)
      join =  n >= 1000 ? ',' : ' and'
      n % divisor == 0 ? "#{nums_to_words_recursive(n/divisor)} #{descriptor}" : "#{nums_to_words_recursive(n/divisor)} #{descriptor}#{join} #{nums_to_words_recursive(n - ((n/divisor) * divisor))}"
    end
  
    descriptor_bounds_pairs = { "hundred" => [100,1000], "thousand" => [1000,1000000], "million" => [1000000, 1000000000], "billion" => [1000000000, 1000000000000] }
  
    descriptor_bounds_pairs.each do |descriptor, (min,max)|
      if number < max
        return again(number, min, descriptor)
        break
      end
    end
  
  end