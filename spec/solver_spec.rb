require_relative '../src/solver'
describe Solver do
  before :each do
    @solver = Solver.new
  end
  describe 'factorial' do
    it 'should take an integer and return the factorial' do
      actual_factorial = @solver.factorial(3)
      expect(actual_factorial).to eq 6
    end
    it 'should raise an exception with a negative integer' do
      expect { @solver.factorial(-1) }.to raise_error('Number can not be negative')
    end
    it 'should return 1 if a 0 is passed as an argument' do
      actual_factorial = @solver.factorial(0)
      expect(actual_factorial).to eq 1
    end
  end
  describe 'reverse' do
    it 'should return a reversed string' do
      actual_reversed = @solver.reverse('hello')
      expect(actual_reversed).to eq 'olleh'
    end
  end
  describe 'fizzbuzz' do
    it 'should return fizz when n is divisible by three' do
      fizz = @solver.fizzbuzz(3)
      expect(fizz).to eq 'fizz'
    end
    it 'should return buzz when n is divisible by five' do
      buzz = @solver.fizzbuzz(5)
      expect(buzz).to eq 'buzz'
    end
    it 'should return fizzbuzz when n is divisible by three and five' do
      fizzbuzz = @solver.fizzbuzz(15)
      expect(fizzbuzz).to eq 'fizzbuzz'
    end
    it 'should return string if n is other number' do
      anynumber = @solver.fizzbuzz(1)
      expect(anynumber).to eq '1'
    end
  end
end
