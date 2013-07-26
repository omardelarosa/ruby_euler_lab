def prob2 #sum of even fibinacci up to 4,000,000
  num = 0
  num_next = 1
  to_sum = []
  while num < 4000000
    num, num_next = num_next, num + num_next
    if num.even?
      to_sum.push num
    end
  end
  to_sum.reduce(:+)
end
p prob2