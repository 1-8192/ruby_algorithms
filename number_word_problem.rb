# 5. given a number N where 1 billion > N > 0 whole numbers only # output the number in words # ie: 384765 output three hundred eighty four thousand seven hundred sixty five

def number_to_word_converter(number)
    single_digits = [
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

    tens_digits = [
        "twenty",
        "thirty",
        "forty",
        "fifty",
        "sixty",
        "seventy",
        "eighty",
        "ninety"
    ]

    if number < 20
        single_digits[number - 1 ]
    else   
        # tens_digits[number[0] - 2] + " " + single_digits[number[1] - 1]
    end
end

p number_to_word_converter(4)
p number_to_word_converter(10)
p number_to_word_converter(1)
p number_to_word_converter(16)
p number_to_word_converter(19)