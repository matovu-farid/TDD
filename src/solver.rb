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
    return 'fizzbuzz' if (word % 3).zero? && (word % 5).zero?
    return 'fizz' if (word % 3).zero?
    return 'buzz' if (word % 5).zero?

    word.to_s
  end
end
