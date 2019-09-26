# 5. given a number N where 1 billion > N > 0 whole numbers only # output the number in words # ie: 384765 output three hundred eighty four thousand seven hundred sixty five


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
        elsif num / int != 0 
            return final_word + number_to_word_converter(num / int) + " "  + "#{word}" + " " + number_to_word_converter(num % int)
        end
    end 
end
# Test suite

p number_to_word_converter(0)
p number_to_word_converter(7)
p number_to_word_converter(24)
p number_to_word_converter(30)
p number_to_word_converter(3456725326)
p number_to_word_converter(1000000)
p number_to_word_converter(10000000)
p number_to_word_converter(100000000)

