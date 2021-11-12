def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(nums)
  nums.reduce(0, :+)
  
  # alternative:
  # nums.sum
end

def multiply(num1, num2, *nums)
  nums.empty? ? num1 * num2 : num1 * num2 * nums.reduce(:*)
end

def power(base, exponent)
  base**exponent
end

def factorial(num, res = 1)
  return 1 if num <= 1
  res * num * factorial(num - 1, res)

  # alternative:
  # (1..num).reduce(1, :*)   
end
