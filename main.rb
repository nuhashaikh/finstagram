# Data Types
# Integers, Strings, Floats, Boolean
# Arrays, Hashes

#my_array= (1..100).to_a

# i is the data from the array

# for i in my_array do
#     if i%3==0 && i%5==0
#         p "FizzBuzz"
#     elsif i%5==0
#         p "Buzz"
#     elsif i%3==0
#         p "Fizz"
#     else
#         p i
#     end
# end

def yellow_pager(stringOfLetters) 
    if stringOfLetters.size!= 10
        return false   
    else
        number_output=""
        stringOfLetters= stringOfLetters.to_a
        for i in stringOfLetters do
            if i == A ||i== B ||i== C
                number_output+="2"
                elsif i == D ||i == E || i ==F
                    number_output+="3"
                elsif i == G ||i == H ||i == I
                    number_output+="4"
                elsif i == J || i ==K || i ==L
                    number_output+="5"
                elsif i == M || i ==N ||i == O
                    number_output+="6"
                elsif i == P || i ==Q || i ==R || i ==S
                    number_output+="7"
                elsif i == T || i ==U || i ==V
                    number_output+="8"
                elsif i == W || i ==X || i ==Y || i ==Z
                    number_output+="9"
            end
        end
    end
end

p yellow_pager("helloworld")