# 5. given a number N where 1 billion > N > 0 whole numbers only # output the number in words # ie: 384765 output three hundred eighty four thousand seven hundred sixty five

# @single_digits = [
#     "One",
#     "Two",
#     "Three",
#     "Four",
#     "Five",
#     "Six",
#     "Seven",
#     "Eight",
#     "Nine",
#     "Ten",
#     "Eleven",
#     "Twelve",
#     "Thirteen",
#     "Fourteen",
#     "Fifteen",
#     "Sixteen",
#     "Seventeen",
#     "Eighteen",
#     "Nineteen"
# ]

# @tens_digits = [
#     "Twenty",
#     "Thirty",
#     "Forty",
#     "Fifty",
#     "Sixty",
#     "Seventy",
#     "Eighty",
#     "Ninety"
# ]

# def turn_integer_into_string(number)
#     number.to_s.split('')
# end

# def first_digit(string)
#     string.shift.to_i
# end

# def number_to_word_less_than_hundred(number)
#     if number < 20 
#         @single_digits[number - 1]
#     else      
#         test = number.to_s 
#         if number == 100
#             @single_digits[test[0].to_i - 1] + " Hundred"
#         elsif test[1] == "0" 
#             @tens_digits[test[0].to_i - 2]
#         elsif test[1] == "0" && test[2] == "0"
#             @tens_digits[test[0].to_i - 2] + " Hundred"
#         else 
#             @tens_digits[test[0].to_i - 2] + " " + @single_digits[test[1].to_i - 1]
#         end 
#     end 
# end

# def number_to_word_less_than_thousand(number)
#         test = number.to_s 
#         if number == 1000
#             @single_digits[test[0].to_i - 1] + " Thousand"
#         elsif test[1] == 0 
#             @single_digits[test[0].to_i - 1] + " Hundred " + @single_digits[test[2].to_i]
#         else  
#             @single_digits[test[0].to_i - 1] + " Hundred " + @tens_digits[test[1].to_i - 2] + " " + @single_digits[test[2].to_i - 1]
#         end 
# end 

# def number_to_word_less_than_ten_thousand(number)
#     test = number.to_s.split('') 
#      thousand = test.shift  
    
#      if number == 10000
#         "Ten Thousand"
#      else
#         @single_digits[thousand.to_i - 1] + " Thousand " + number_to_word_less_than_thousand(test.join('').to_i)
#      end
# end 

# def number_to_word_less_than_hundred_thousand(number)
#     test = number.to_s.split('')
#     ten_thousand = test.slice(0,2).join('').to_i 
#     test.shift 
#     test.shift
    
#     if number == 100000
#         "One Hundred Thousand"
#     elsif ten_thousand < 20
#         @single_digits[ten_thousand - 1] + ' Thousand ' + number_to_word_less_than_thousand(test.join('').to_i)
#     else 
#         @tens_digits[ten_thousand.to_s[0].to_i - 2] + " " + @single_digits[ten_thousand.to_s[1].to_i - 1] + ' Thousand ' + number_to_word_less_than_thousand(test.join('').to_i)
#     end 
    
# end 

# def number_to_word_less_than_million(number)
#     test = number.to_s.split('')
#     hundred_k = test.shift 

#     if number == 1000000
#         "One Million"
#     else 
#         @single_digits[hundred_k.to_i - 1] + ' Hundred ' + number_to_word_less_than_hundred_thousand(test.join('').to_i)
#     end
# end 

# def number_to_word_less_than_ten_million(number)
#     test = number.to_s.split('')
#     million = test.shift 

#     if number == 10000000
#         "Ten Million"
#     else 
#         @single_digits[million.to_i - 1] + ' Million ' + number_to_word_less_than_million(test.join('').to_i)
#     end
# end

# def number_to_word_less_than_hundred_million(number)
#     test = number.to_s.split('')
#     ten_million = test.slice(0,2).join('').to_i 
#     test.shift 
#     test.shift 

#     if number == 100000000
#         "One Hundred Million"
#     elsif ten_million < 20 
#         @single_digits[ten_million - 1] + ' Million ' + number_to_word_less_than_million(test.join('').to_i)
#     else  
#         @tens_digits[ten_million.to_s[0].to_i - 2] + " " + @single_digits[ten_million.to_s[1].to_i - 1] + ' Million ' + number_to_word_less_than_million(test.join('').to_i)
#     end
# end 

# def number_to_word_less_than_billion(number)
#     test = number.to_s.split('')
#     hundred_m = test.shift 

#     p test.join('').to_i

#     @single_digits[hundred_m.to_i - 1] + " Hundred " + number_to_word_less_than_hundred_million(test.join('').to_i)
# end 

# def number_to_word_converter(number)
#     case number 
#     when 1..100
#         number_to_word_less_than_hundred(number)
#     when 101..1000
#         number_to_word_less_than_thousand(number)
#     when 1001..10000
#         number_to_word_less_than_ten_thousand(number)
#     when 10001..100000
#         number_to_word_less_than_hundred_thousand(number)
#     when 100001..1000000
#         number_to_word_less_than_million(number)
#     when 1000001..10000000
#         number_to_word_less_than_ten_million(number)
#     when 10000001..100000000
#         number_to_word_less_than_hundred_million(number)
#     when 100000001..1000000000
#         number_to_word_less_than_billion(number)
#     else  
#         0
#     end
# end

#attempt with hash
def number_to_word_converter(num)
    number_name_hash = {
        1000000000 => 'billion',
        1000000 => 'million',
        1000 => 'thousand',
        100 => 'hundred',
        90 => 'ninety',
        80 => 'eighty',
        70 => 'seventy',
        60 => 'sixty',
        50 => 'fifty',
        40 => 'forty',
        30 => 'thirty',
        20 => 'twenty',
        19 => 'nineteen',
        18 => 'eightee',
        17 => 'seventeen',
        16 => 'sixteen',
        15 => 'fifteen',
        14 => 'fourteen',
        13 => 'thirteen',
        12 => 'twelve',
        11 => 'eleven',
        10 => 'ten',
        9 => 'nine',
        8 => 'eight',
        7 => 'seven',
        6 => 'six',
        5 => 'five', 
        4 => 'four',
        3 => 'three',
        2 => 'two',
        1 => 'one',
        0 => 'zero'
    }

    final_word = ""

    if num == 0
        return number_name_hash[0]
    end

    number_name_hash.each do |int, word| 
        if num == 0
            return final_word
        elsif num < 10 && num/int != 0 
            return final_word + "#{word}"
        elsif num < 100 && num/int != 0
            if num % int == 0 
                return final_word + "#{word}"
            else 
              return final_word + "#{word}" + " " + number_to_word_converter(num % int)  
            end
        end
    end 
end
# Test suite

p number_to_word_converter(0)
p number_to_word_converter(7)
p number_to_word_converter(24)
p number_to_word_converter(30)
# p number_to_word_converter(1000000)
# p number_to_word_converter(10000000)
# p number_to_word_converter(100000000)

