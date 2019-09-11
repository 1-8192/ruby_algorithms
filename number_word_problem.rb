# 5. given a number N where 1 billion > N > 0 whole numbers only # output the number in words # ie: 384765 output three hundred eighty four thousand seven hundred sixty five

@single_digits = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen"
]

@tens_digits = [
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety"
]

def number_to_word_less_than_thousand(number)
    if number < 20
        @single_digits[number - 1]
    elsif number < 100 
        test = number.to_s
        @tens_digits[test[0].to_i - 2] + " " + @single_digits[test[1].to_i - 1]
    else 
        test = number.to_s 
        if test[1] == 0 
            @single_digits[test[0].to_i - 1] + " hundred " + @single_digits[test[2].to_i]
        else  
            @single_digits[test[0].to_i - 1] + " hundred " + @tens_digits[test[1].to_i - 2] + " " + @single_digits[test[2].to_i - 1]
        end 
    end
end 

def number_to_word_converter(number)
   if number < 1000 
     return number_to_word_less_than_thousand(number)
   elsif number < 10000
     test = number.to_s.split('') 
     thousand = test.shift  

     @single_digits[thousand.to_i - 1] + " thousand " + number_to_word_converter(test.join('').to_i)
   end 
end

# Test suite

# p number_to_word_converter(4)
# p number_to_word_converter(10)
# p number_to_word_converter(1)
# p number_to_word_converter(16)
# p number_to_word_converter(19)
# p number_to_word_converter(25)
# p number_to_word_converter(99)
# p number_to_word_converter(78)
# p number_to_word_converter(109)
# p number_to_word_converter(534)
# p number_to_word_converter(999)
p number_to_word_converter(1007)
p number_to_word_converter(1345)
p number_to_word_converter(9999)