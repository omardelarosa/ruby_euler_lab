require './../lib/mathy.rb'

def fib_george(max)
    #initializers
    i = 2
    n = 0
    n_minus_1 = 1
    n_minus_2 = 0


    #  n = n_minus_1 + n_minus_2

    while i < max

        # bubble = [n-2, n-1, n]

        #set current value to the sum of the two previous
        n = n_minus_1 + n_minus_2

        #shift values and move our 'bubble'
        n_minus_2 = n_minus_1

        #next shift
        n_minus_1 = n

        #increment i and go to next number
        i+=1
    end
    #now returns n
    n
end

# def add(n1,n2)
#     if n1 == 0
#         n2
#     else
#         n1-=1
#         n2+=1
#         add(n1,n2)
#     end
# end

list = [] #accumulator as a list

# (1..100).each do |num|
#     fib_num = fib_george(num)
#     if fib_num && is_n_multiple_of_x(fib_num,2)
#         list.push(fib_num)
#     end
# end

fib_num = 0
num = 0

while fib_num < 4000000
    fib_num = fib_george(num)
    if fib_num && is_n_multiple_of_x(fib_num,2)
        list.push(fib_num)
    end
    num+=1
end

puts list.reduce(:+)
#i need to make list of the first n fibonaccis