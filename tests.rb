def my_each(array)

    i = 0
    while i < array.length
        yield(array[i])
        i+=1
    end 

    array
end

def my_select(array)
    i=0
    selecion = []
    while i < array.length
        selecion << array[i] if yield(array[i])
        i+=1
    end 
    selecion
end

def my_all?(array)
    i=0
    while i < array.length
        
        return false unless yield(array[i])
        i+=1
    end 
    true  
end 

def my_any?(array)
    i=0
    while i < array.length
        return true if yield(array[i])
        i+=1
    end 
    true  
end

def my_count(array)
    i=0
    count = 0
    while i < array.length
        count+=1 if yield(array[i])
        i+=1
    end 
    count  
end

def my_map(array)
    i=0
    count = 0
    while i < array.length
        array[i] = yield(array[i])
        i+=1
    end 
    array  
end

def my_inject(array)
    i=0
    sum = 0
    while i < array.length
        sum = yield(sum, array[i])
        i+=1
    end 
    sum  
end


puts [5,4,5,2].inject{|sum,n| sum *n}



