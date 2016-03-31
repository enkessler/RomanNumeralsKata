class RomanArabicConverter

  def a_to_r(number)
    digit_mappings= {0 => ['', '', '', ''],
                     1 => ['I', 'X', 'C', 'M'],
                     2 => ['II', 'XX', 'CC', 'MM'],
                     3 => ['III', 'XXX', 'CCC', 'MMM'],
                     4 => ['IV', 'XL', 'CD', ''],
                     5 => ['V', 'L', 'D', ''],
                     6 => ['VI', 'LX', 'DC', ''],
                     7 => ['VII', 'LXX', 'DCC', ''],
                     8 => ['VIII', 'LXXX', 'DCCC', ''],
                     9 => ['IX', 'XC', 'CM', '']}

    converted_number = ''

    # Note: will never have a number with more than four digits
    4.times do |magnitude|
      digit = digit_for_magnitude(number, magnitude)
      converted_number.prepend(digit_mappings[digit][magnitude])
    end

    converted_number
  end


  def r_to_a(number)
    # These mappings are easier because, unlike Arabic numerals, Roman numerals indicate both size and magnitude
    digit_mappings ={'I' => 1,
                     'V' => 5,
                     'X' => 10,
                     'L' => 50,
                     'C' => 100,
                     'D' => 500,
                     'M' => 1000}

    converted_number = 0

    number.split('').each_with_index do |digit, index|
      current_digit = digit_mappings[digit]
      next_digit = digit_mappings[number[index+1]]

      # A larger next number indicates subtraction instead of addition
      if next_digit && next_digit > current_digit
        converted_number -= current_digit
      else
        converted_number += current_digit
      end

    end

    converted_number
  end


  private


  def digit_for_magnitude(number, magnitude)
    magnitude.times do
      number /= 10
    end

    number % 10
  end

end
