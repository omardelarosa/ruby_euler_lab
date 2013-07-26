def sum_of_list(list)
    list.inject {|sum,x| sum+x } 
end

def is_n_multiple_of_x(n,x)
    # int,int -> bool
    if n % x == 0
        #is a multiple
        true
    else
        false
    end
end