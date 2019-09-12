# 5. given a number N where 1 billion > N > 0 whole numbers only # output the number in words # ie: 384765 output three hundred eighty four thousand seven hundred sixty five

@single_digits = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen"
]

@tens_digits = [
    "Twenty",
    "Thirty",
    "Forty",
    "Fifty",
    "Sixty",
    "Seventy",
    "Eighty",
    "Ninety"
]

def number_to_word_less_than_hundred(number)
    if number < 20 
        @single_digits[number - 1]
    else      
        test = number.to_s 
        if number == 100
            @single_digits[test[0].to_i - 1] + " Hundred"
        elsif test[1] == "0" 
            @tens_digits[test[0].to_i - 2]
        elsif test[1] == "0" && test[2] == "0"
            @tens_digits[test[0].to_i - 2] + " Hundred"
        else 
            @tens_digits[test[0].to_i - 2] + " " + @single_digits[test[1].to_i - 1]
        end 
    end 
end

def number_to_word_less_than_thousand(number)
        test = number.to_s 
        if number == 1000
            @single_digits[test[0].to_i - 1] + " Thousand"
        elsif test[1] == 0 
            @single_digits[test[0].to_i - 1] + " Hundred " + @single_digits[test[2].to_i]
        else  
            @single_digits[test[0].to_i - 1] + " Hundred " + @tens_digits[test[1].to_i - 2] + " " + @single_digits[test[2].to_i - 1]
        end 
end 

def number_to_word_less_than_ten_thousand(number)
    test = number.to_s.split('') 
     thousand = test.shift  
    
     if number == 10000
        "Ten Thousand"
     else
        @single_digits[thousand.to_i - 1] + " Thousand " + number_to_word_less_than_thousand(test.join('').to_i)
     end
end 

def number_to_word_less_than_hundred_thousand(number)
    test = number.to_s.split('')
    ten_thousand = test.slice(0,2).join('').to_i 
    test.shift 
    test.shift
    
    if number == 100000
        "One Hundred Thousand"
    elsif ten_thousand < 20
        @single_digits[ten_thousand - 1] + ' Thousand ' + number_to_word_less_than_thousand(test.join('').to_i)
    else 
        @tens_digits[ten_thousand.to_s[0].to_i - 2] + " " + @single_digits[ten_thousand.to_s[1].to_i - 1] + ' Thousand ' + number_to_word_less_than_thousand(test.join('').to_i)
    end 
    
end 

def number_to_word_less_than_million(number)
    test = number.to_s.split('')
    hundred_k = test.shift 

    if number == 1000000
        "One Million"
    else 
        @single_digits[hundred_k.to_i - 1] + ' Hundred ' + number_to_word_less_than_hundred_thousand(test.join('').to_i)
    end
end 

def number_to_word_less_than_ten_million(number)
    test = number.to_s.split('')
    million = test.shift 

    if number == 10000000
        "Ten Million"
    else 
        @single_digits[million.to_i - 1] + ' Million ' + number_to_word_less_than_million(test.join('').to_i)
    end
end

def number_to_word_less_than_hundred_million(number)
    test = number.to_s.split('')
    ten_million = test.slice(0,2).join('').to_i 
    test.shift 
    test.shift 

    if number == 100000000
        "One Hundred Million"
    elsif ten_million < 20 
        @single_digits[ten_million - 1] + ' Million ' + number_to_word_less_than_million(test.join('').to_i)
    else  
        @tens_digits[ten_million.to_s[0].to_i - 2] + " " + @single_digits[ten_million.to_s[1].to_i - 1] + ' Million ' + number_to_word_less_than_million(test.join('').to_i)
    end
end 

def number_to_word_less_than_billion(number)
    test = number.to_s.split('')
    hundred_m = test.shift 

    p test.join('').to_i

    @single_digits[hundred_m.to_i - 1] + " Hundred " + number_to_word_less_than_hundred_million(test.join('').to_i)
end 

def number_to_word_converter(number)
    case number 
    when 1..100
        number_to_word_less_than_hundred(number)
    when 101..1000
        number_to_word_less_than_thousand(number)
    when 1001..10000
        number_to_word_less_than_ten_thousand(number)
    when 10001..100000
        number_to_word_less_than_hundred_thousand(number)
    when 100001..1000000
        number_to_word_less_than_million(number)
    when 1000001..10000000
        number_to_word_less_than_ten_million(number)
    when 10000001..100000000
        number_to_word_less_than_hundred_million(number)
    when 100000001..1000000000
        number_to_word_less_than_billion(number)
    else  
        0
    end
end

# Test suite

p number_to_word_converter(100)
p number_to_word_converter(1000)
p number_to_word_converter(10000)
p number_to_word_converter(100000)
p number_to_word_converter(1000000)
p number_to_word_converter(10670000)
p number_to_word_converter(100000000)