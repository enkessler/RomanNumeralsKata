class RomanArabicConverter

  def r_to_a(number)
    conversion_map = {1 => 'I',
                      2 => 'II',
                      3 => 'III',
                      4 => 'IV',
                      5 => 'V',
                      6 => 'VI',
                      7 => 'VII',
                      8 => 'VIII',
                      9 => 'IX',
                      10 => 'X'}

    conversion_map[number]
  end

end
