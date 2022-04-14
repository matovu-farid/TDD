class Solver
  def factorial(number)
    raise 'Number can not be negative' if number.negative?

    result = 1
    (1..number).each do |i|
      result *= i
    end
    result
  end

  def reverse(word)
    word.reverse
  end
  def fizzbuzz(word)
    if word % 3 == 0 && word % 5 == 0
      return 'fizzbuzz'
    end
    if word % 3 == 0
      return 'fizz'
    end
    if word % 5 == 0
      return 'buzz'
    end
  end
end
