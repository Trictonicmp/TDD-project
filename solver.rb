class Solver
  def factorial(number)
    raise ArgumentError.new("Not a valid value") if number < 0
    return factorial_calculator(number)
  end

  def factorial_calculator(number)
    return 1 if number == 0
    return number * factorial_calculator(number - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if number % 3 == 0 && number %5 == 0
    return 'fizz' if number % 3 == 0
    return 'buzz' if number % 5 == 0
  end
end