require './../lib/helper.rb'

def is_n_multiple_of_x(n,x)
    # int,int -> bool
    if n % x == 0
        #is a multiple
        true
    else
        false
    end
end

def sum_of_list(list)
    list.inject {|sum,x| sum+x } 
end

def solver(n)
    #initialize our counter at 1
    counter = 1

    #intialize our accumulator at 0
    accumulator = 0

    #start a loop
    while counter <= n
        #output the current value of counter 
        
        if is_n_multiple_of_x(counter,3) || is_n_multiple_of_x(counter,5)
            accumulator += counter
        end
        #increment our counter
        counter+=1
    end
    puts "The Answer is: "+accumulator.to_s
end

#1. count to 1000
#2. check if each number is a multiple of 3 or 5
#3. if so, add them to the running sum

t = SimpleTimer.new({start_now: true})

 solver(999)

t.stop