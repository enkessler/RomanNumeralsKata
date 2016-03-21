require_relative '../roman_arabic_converter'


describe 'Converting Roman numerals' do

  let(:converter) { RomanArabicConverter.new }


  it 'converts 1 to I' do
    expect(converter.r_to_a(1)).to eq('I')
  end

  it 'converts 2 to II' do
    expect(converter.r_to_a(2)).to eq('II')
  end

  it 'converts 3 to III' do
    expect(converter.r_to_a(3)).to eq('III')
  end

  it 'converts 4 to IV' do
    expect(converter.r_to_a(4)).to eq('IV')
  end

  it 'converts 5 to V' do
    expect(converter.r_to_a(5)).to eq('V')
  end

  it 'converts 6 to VI' do
    expect(converter.r_to_a(6)).to eq('VI')
  end

  it 'converts 7 to VII' do
    expect(converter.r_to_a(7)).to eq('VII')
  end

  it 'converts 8 to VIII' do
    expect(converter.r_to_a(8)).to eq('VIII')
  end

  it 'converts 9 to IX' do
    expect(converter.r_to_a(9)).to eq('IX')
  end

  it 'converts 10 to X' do
    expect(converter.r_to_a(10)).to eq('X')
  end

end
