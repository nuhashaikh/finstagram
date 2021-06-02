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
    if stringOfLetters.size != 10
        return false   
    else
        number_output= decision_list(stringOfLetters)
        return number_output
    end
end

def decision_list(input_string)
        input_string_length= input_string.size
        number_output=""
        i=0
        input_string_length.times do
                p input_string.slice(i)
             if (input_string.slice(i) == 'A' ||input_string.slice(i)== 'B' ||input_string.slice(i)== 'C')
                 number_output+="2"
            elsif (input_string.slice(i) == 'D' ||input_string.slice(i) == 'E' || input_string.slice(i) =='F')
                    number_output+="3"
            elsif (input_string.slice(i) == 'G' ||input_string.slice(i) == 'H' ||input_string.slice(i) == 'I')
                    number_output+="4"
            elsif (input_string.slice(i) == 'J'|| input_string.slice(i) =='K' || input_string.slice(i)=='L')
                    number_output+="5"
            elsif (input_string.slice(i) == 'M' || input_string.slice(i) =='N' ||input_string.slice(i) == 'O')
                    number_output+="6"
            elsif (input_string.slice(i) == 'P' || input_string.slice(i) =='Q' || input_string.slice(i) =='R' || input_string.slice(i) =='S')
                    number_output+="7"
            elsif (input_string.slice(i) == 'T' || input_string.slice(i) =='U' || input_string.slice(i) =='V')
                    number_output+="8"
            elsif (input_string.slice(i) == 'W' || input_string.slice(i) =='X' || input_string.slice(i) =='Y' || input_string.slice(i) =='Z')
                    number_output+="9"
            else
                number_output+=""
             end
             i+= 1
         end
     return number_output
end

p yellow_pager("HELLOWORLD")