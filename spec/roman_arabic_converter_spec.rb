require_relative '../roman_arabic_converter'


describe 'Converting Roman numerals' do

  let(:converter){RomanArabicConverter.new}


  it 'converts 1 to I' do
    expect(converter.r_to_a(1)).to eq('I')
  end

end
