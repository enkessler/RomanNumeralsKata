require_relative '../roman_arabic_converter'


describe 'Converting Roman numerals' do

  let(:converter) { RomanArabicConverter.new }


  describe 'Arabic to Roman conversion' do

    it 'can convert from Arabic to Roman' do
      expect(converter).to respond_to(:a_to_r)
    end

    describe 'basic conversions' do

      it 'converts 1 to I' do
        expect(converter.a_to_r(1)).to eq('I')
      end

      it 'converts 2 to II' do
        expect(converter.a_to_r(2)).to eq('II')
      end

      it 'converts 3 to III' do
        expect(converter.a_to_r(3)).to eq('III')
      end

      it 'converts 4 to IV' do
        expect(converter.a_to_r(4)).to eq('IV')
      end

      it 'converts 5 to V' do
        expect(converter.a_to_r(5)).to eq('V')
      end

      it 'converts 6 to VI' do
        expect(converter.a_to_r(6)).to eq('VI')
      end

      it 'converts 7 to VII' do
        expect(converter.a_to_r(7)).to eq('VII')
      end

      it 'converts 8 to VIII' do
        expect(converter.a_to_r(8)).to eq('VIII')
      end

      it 'converts 9 to IX' do
        expect(converter.a_to_r(9)).to eq('IX')
      end

      it 'converts 10 to X' do
        expect(converter.a_to_r(10)).to eq('X')
      end

      it 'converts 20 to XX' do
        expect(converter.a_to_r(20)).to eq('XX')
      end

      it 'converts 30 to XXX' do
        expect(converter.a_to_r(30)).to eq('XXX')
      end

      it 'converts 40 to XL' do
        expect(converter.a_to_r(40)).to eq('XL')
      end

      it 'converts 50 to L' do
        expect(converter.a_to_r(50)).to eq('L')
      end

      it 'converts 60 to LX' do
        expect(converter.a_to_r(60)).to eq('LX')
      end

      it 'converts 70 to LXX' do
        expect(converter.a_to_r(70)).to eq('LXX')
      end

      it 'converts 80 to LXXX' do
        expect(converter.a_to_r(80)).to eq('LXXX')
      end

      it 'converts 90 to XC' do
        expect(converter.a_to_r(90)).to eq('XC')
      end

      it 'converts 100 to C' do
        expect(converter.a_to_r(100)).to eq('C')
      end

      it 'converts 200 to CC' do
        expect(converter.a_to_r(200)).to eq('CC')
      end

      it 'converts 300 to CCC' do
        expect(converter.a_to_r(300)).to eq('CCC')
      end

      it 'converts 400 to CD' do
        expect(converter.a_to_r(400)).to eq('CD')
      end

      it 'converts 500 to D' do
        expect(converter.a_to_r(500)).to eq('D')
      end

      it 'converts 600 to DC' do
        expect(converter.a_to_r(600)).to eq('DC')
      end

      it 'converts 700 to DCC' do
        expect(converter.a_to_r(700)).to eq('DCC')
      end

      it 'converts 800 to DCCC' do
        expect(converter.a_to_r(800)).to eq('DCCC')
      end

      it 'converts 900 to CM' do
        expect(converter.a_to_r(900)).to eq('CM')
      end

      it 'converts 1000 to M' do
        expect(converter.a_to_r(1000)).to eq('M')
      end

      it 'converts 2000 to MM' do
        expect(converter.a_to_r(2000)).to eq('MM')
      end

      # High as I'm going because I don't have any higher order numerals to use that
      # would prevent me from having four M's in a row
      it 'converts 3000 to MMM' do
        expect(converter.a_to_r(3000)).to eq('MMM')
      end

    end


    describe 'edge cases' do

      it 'converts the largest possible number (3999 to MMMCMXCIX)' do
        expect(converter.a_to_r(3999)).to eq('MMMCMXCIX')
      end

      it 'can convert a number with a non-zero value in every place (1234 to MCCXXXIV)' do
        expect(converter.a_to_r(1234)).to eq('MCCXXXIV')
      end

      # todo - check with business to see if there is a desired outcome for this situation
      it 'can handle converting 0' do
        expect { converter.a_to_r(0) }.to_not raise_error
      end

    end

    describe 'spot checking' do

      it 'converts 1066 to MLXVI' do
        expect(converter.a_to_r(1066)).to eq('MLXVI')
      end

      it 'converts 1989 to MCMLXXXIX' do
        expect(converter.a_to_r(1989)).to eq('MCMLXXXIX')
      end

    end

  end


  describe 'Roman to Arabic conversion' do

    it 'can convert from Roman to Arabic' do
      expect(converter).to respond_to(:r_to_a)
    end

  end

end
