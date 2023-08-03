require_relative '../solver'

RSpec.describe Solver do
  subject(:solver) { described_class.new }

  describe '#factorial' do
    context 'when given a positive integer' do
      it 'returns the correct factorial' do
        expect(solver.factorial(0)).to eq(1)
        expect(solver.factorial(1)).to eq(1)
        expect(solver.factorial(5)).to eq(120)
        expect(solver.factorial(10)).to eq(3_628_800)
      end
    end

    context 'when given a negative integer' do
      it 'raises an exception' do
        expect { solver.factorial(-5) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    it 'reverses the given word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('ruby')).to eq('ybur')
      expect(solver.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when N is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(6)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when N is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
      expect(solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
    end

    it 'returns N as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(11)).to eq('11')
      expect(solver.fizzbuzz(17)).to eq('17')
    end
  end
end
