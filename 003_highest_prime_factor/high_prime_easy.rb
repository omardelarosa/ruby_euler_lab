require 'prime'
array = Prime.prime_division(600851475143)
answer = array[-1][0]**array[-1][1]
puts answer