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

  it 'converts 20 to XX' do
    expect(converter.r_to_a(20)).to eq('XX')
  end

  it 'converts 30 to XXX' do
    expect(converter.r_to_a(30)).to eq('XXX')
  end

  it 'converts 40 to XL' do
    expect(converter.r_to_a(40)).to eq('XL')
  end

  it 'converts 50 to L' do
    expect(converter.r_to_a(50)).to eq('L')
  end

  it 'converts 60 to LX' do
    expect(converter.r_to_a(60)).to eq('LX')
  end

  it 'converts 70 to LXX' do
    expect(converter.r_to_a(70)).to eq('LXX')
  end

  it 'converts 80 to LXXX' do
    expect(converter.r_to_a(80)).to eq('LXXX')
  end

  it 'converts 90 to XC' do
    expect(converter.r_to_a(90)).to eq('XC')
  end

  it 'converts 100 to C' do
    expect(converter.r_to_a(100)).to eq('C')
  end

  it 'converts 200 to CC' do
    expect(converter.r_to_a(200)).to eq('CC')
  end

  it 'converts 300 to CCC' do
    expect(converter.r_to_a(300)).to eq('CCC')
  end

  it 'converts 400 to CD' do
    expect(converter.r_to_a(400)).to eq('CD')
  end

  it 'converts 500 to D' do
    expect(converter.r_to_a(500)).to eq('D')
  end

  it 'converts 600 to DC' do
    expect(converter.r_to_a(600)).to eq('DC')
  end

  it 'converts 700 to DCC' do
    expect(converter.r_to_a(700)).to eq('DCC')
  end

  it 'converts 800 to DCCC' do
    expect(converter.r_to_a(800)).to eq('DCCC')
  end

  it 'converts 900 to CM' do
    expect(converter.r_to_a(900)).to eq('CM')
  end

  it 'converts 1000 to M' do
    expect(converter.r_to_a(1000)).to eq('M')
  end

  it 'converts 2000 to MM' do
    expect(converter.r_to_a(2000)).to eq('MM')
  end

  # High as I'm going because I don't have any higher order numerals to use that
  # would prevent me from having four M's in a row
  it 'converts 3000 to MMM' do
    expect(converter.r_to_a(3000)).to eq('MMM')
  end

end
