def nums_to_words(n)

    def get_0_to_99(num)
        tricky_nums = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety" }
        return tricky_nums[num] if tricky_nums[num]
        return "#{tricky_nums[(num / 10) * 10]}-#{tricky_nums[num % 10]}" if num > 20
    end
    
    return get_0_to_99(n) if n < 100

    def get_hundreds(num)
        return get_0_to_99(num) if num < 100
        return num % 100 == 0 ? "#{get_0_to_99(num/100)} hundred" : "#{get_0_to_99(num/100)} hundred and #{get_0_to_99(num%100)}"
    end

    get_hundreds(n)

end