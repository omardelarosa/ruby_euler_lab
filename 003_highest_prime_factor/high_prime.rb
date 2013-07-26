# def probThree(n)
#   sum = 0
#   while !n %2==0 || !n %3==0 
    
#   end
#   puts sum 
# end

def prob_three
    max = 600851475143**0.5

    for i in (1..max).step(2)
        if 600851475143 % i == 0
            if is_prime(i)
                ans = i
            end
        end
    end
    ans
end

def is_prime(n)
    for i in 2..n-1
        if n % i == 0
            false
        end
    end
    true
end

p prob_three