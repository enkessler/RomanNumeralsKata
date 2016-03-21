class RomanArabicConverter

  def r_to_a(number)

    ones_map ={1 => 'I',
               2 => 'II',
               3 => 'III',
               4 => 'IV',
               5 => 'V',
               6 => 'VI',
               7 => 'VII',
               8 => 'VIII',
               9 => 'IX'}

    tens_map ={1 => 'X',
               2 => 'XX',
               3 => 'XXX',
               4 => 'XL',
               5 => 'L',
               6 => 'LX',
               7 => 'LXX',
               8 => 'LXXX',
               9 => 'XC'}

    hundreds_map ={1 => 'C',
                   2 => 'CC',
                   3 => 'CCC',
                   4 => 'CD',
                   5 => 'D',
                   6 => 'DC',
                   7 => 'DCC',
                   8 => 'DCCC',
                   9 => 'CM'}

    thousands_map ={1 => 'M',
                    2 => 'MM',
                    3 => 'MMM'}


    case
      when number > 999
        thousands = thousands_map[number / 1000]
        number %= 1000
        hundreds = hundreds_map[number / 100]
        number %= 100
        tens = tens_map[number / 10]
        number %= 10
        ones = ones_map[number]

        thousands + (hundreds || '') + (tens || '') + (ones || '')
      when number > 99
        hundreds = hundreds_map[number / 100]
        number %= 100
        tens = tens_map[number / 10]
        number %= 10
        ones = ones_map[number]

        hundreds + (tens || '') + (ones || '')
      when number > 9
        tens = tens_map[number / 10]
        number %= 10
        ones = ones_map[number]

        tens + (ones || '')
      else
        ones = ones_map[number]

        ones
    end
  end

end
