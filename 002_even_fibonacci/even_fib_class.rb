def fib(n)
    if n < 2
        1
    else
        fib(n-1)+fib(n-2)
    end
end

def fib2(n)
    
end

list = [] #accumulator as a list

(1..4000000).each do |num|
    fib_num = fib(num)
    if fib_num.even?
        list.push(fib_num)
    end
end

puts list.reduce(:+)
#i need to make list of the first n fibonaccis