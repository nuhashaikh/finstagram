# Data Types
# Integers, Strings, Floats, Boolean
# Arrays, Hashes

my_array= (1..100).to_a

# i is the data from the array

for i in my_array do
    if i%3==0 && i%5==0
        p "FizzBuzz"
    elsif i%5==0
        p "Buzz"
    elsif i%3==0
        p "Fizz"
    else
        p i
    end
end
