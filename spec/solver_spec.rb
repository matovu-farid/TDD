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
end
