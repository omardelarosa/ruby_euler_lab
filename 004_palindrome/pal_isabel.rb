def num_generator
  n = 100 + Random.rand(1000 - 100)
end

def pal
  answ = num_generator*num_generator
  answ > 500000
  array = answ.to_s.chars
  midpoint = (array.size / 2).round
  array_1 = array[0, midpoint]
  array_2 = array[midpoint, midpoint]

  if array_1 == array_2.reverse
    true
    p answ
  else
    false
  end

end