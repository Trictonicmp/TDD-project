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

end
