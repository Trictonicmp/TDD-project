require_relative 'solver'

describe Solver do
  describe 'factorial tests' do
    solver = Solver.new
    
    input_number = 6
    factorial = solver.factorial(input_number)

    it 'returns the factorial of 6 (720)' do
      expect(factorial).to eql(720)
    end

    it 'raises an exeption when receiving a negative number (-1)' do
      expect(solver.factorial(-1)).to raise_error
    end
  end

  describe 'reverse tests' do
    solver = Solver.new

    input_str = 'Hello'
    reversed = solver.reverse(input_str)

    it 'returns "Hello" reversed: "olleH"' do
      expect(reversed).to eql('olleH')
    end

    input_str2 = 'How Are You'
    reversed2 = solver.reverse(input_str2)

    it 'returns "How Are You" reversed: "uoY erA woH"' do
      expect(reversed2).to eql('How Are You')
    end
  end

  describe 'fizzbuzz tests' do
    solver = Solver.new

    describe 'fizz tests' do
      input_value = 3
      result = solver.fizzbuzz(input_value)

      it 'returns "fizz" when entering 3 which is divisible by 3' do
        expect(result).to eql('fizz')
      end

      input_value2 = 9
      result2 = solver.fizzbuzz(input_value2)

      it 'returns "fizz" when entering 9 which is divisible by 3' do
        expect(result).to eql('fizz')
      end
    end

    describe 'buzz tests' do
      input_value = 5
      result = solver.fizzbuzz(input_value)

      it 'returns "buzz" when entering 5 which is divisible by 5' do
        expect(result).to eql('buzz')
      end

      input_value2 = 25
      result2 = solver.fizzbuzz(input_value2)

      it 'returns "buzz" when entering 25 which is divisible by 5' do
        expect(result2).to eql('buzz')
      end
    end

    describe 'fizzbuzz tests' do
      solver = Solver.new

      input_value = 15
      result = solver.fizzbuzz(input_value)

      it 'returns "fizzbuzz" when entering 15 which is divisible by 3 and divisible by 5' do
        expect(result).to eql('fizzbuzz')
      end

      input_value2 = 30
      result2 = solver.fizzbuzz(input_value2)

      it 'returns "fizzbuzz" when entering 30 which is divisible by 3 and divisible by 5' do
        expect(result2).to eql('fizzbuzz')
      end
    end
  end
end
