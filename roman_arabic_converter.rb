class RomanArabicConverter

  def r_to_a(number)
    converted_number = ''

    # Note: will never have a number with more than four digits
    converted_number.prepend(convert_ones_place(number % 10))
    number /= 10
    converted_number.prepend(convert_tens_place(number % 10))
    number /= 10
    converted_number.prepend(convert_hundreds_place(number % 10))
    number /= 10
    converted_number.prepend(convert_thousands_place(number % 10))

    converted_number
  end


  private


  def convert_ones_place(digit)
    conversion_map ={0 => '',
                     1 => 'I',
                     2 => 'II',
                     3 => 'III',
                     4 => 'IV',
                     5 => 'V',
                     6 => 'VI',
                     7 => 'VII',
                     8 => 'VIII',
                     9 => 'IX'}

    conversion_map[digit]
  end

  def convert_tens_place(digit)
    conversion_map ={0 => '',
                     1 => 'X',
                     2 => 'XX',
                     3 => 'XXX',
                     4 => 'XL',
                     5 => 'L',
                     6 => 'LX',
                     7 => 'LXX',
                     8 => 'LXXX',
                     9 => 'XC'}

    conversion_map[digit]
  end

  def convert_hundreds_place(digit)
    conversion_map ={0 => '',
                     1 => 'C',
                     2 => 'CC',
                     3 => 'CCC',
                     4 => 'CD',
                     5 => 'D',
                     6 => 'DC',
                     7 => 'DCC',
                     8 => 'DCCC',
                     9 => 'CM'}

    conversion_map[digit]
  end

  def convert_thousands_place(digit)
    conversion_map ={0 => '',
                     1 => 'M',
                     2 => 'MM',
                     3 => 'MMM'}

    conversion_map[digit]
  end

end
