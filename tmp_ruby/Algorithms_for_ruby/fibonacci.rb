def fibonacci(limit)
  fib_sequence = [1, 1]
  
  while true
    next_fib = fib_sequence[-1] + fib_sequence[-2]
    break if next_fib > limit
    fib_sequence << next_fib
  end
  
  puts fib_sequence
end

fibonacci(1000)
