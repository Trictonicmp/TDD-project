class Solver
  def factorial(number)
    raise ArgumentError.new("Not a valid value") if number < 0
    return factorial_calculator(number)
  end

  def factorial_calculator(number)
    return 1 if number == 0
    return number * factorial_calculator(number - 1)
  end
end