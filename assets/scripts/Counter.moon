class Counter

    ---
    -- get val
    -- returns count
    getVal: => @count
 
    ---
    -- to string value
    toString: => tostring(@)

    ---
    -- Initialize counter
    -- @param start value
    new: (start) => 
        @count = start

    ---
    -- add amount to counter
    -- @param amount to add
    add: (amount) =>
        @count = @count + amount
 
    ---
    -- subtract amount from counter
    -- @param amount to subtract
    subtract: (amount) =>
        @count = @count - amount
 
    ---
    -- increment the counter
    increment: () =>
        @add(1)
 
    ---
    -- decrement the counter
    decrement: () =>
        @subtract(1)
 
    ---
    -- to string value
    __tostring: () =>
        string.format("%d", @count)
