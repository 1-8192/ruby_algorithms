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
        "ten"
    ]

    single_digits[number - 1 ]
end

p number_to_word_converter(4)
p number_to_word_converter(10)
p number_to_word_converter(1)