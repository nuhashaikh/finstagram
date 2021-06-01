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
        i=0
        10.times do
            if stringOfLetters(i) == 'A' ||stringOfLetters(i)== 'B' ||stringOfLetters(i)== 'C'
                number_output+="2"
                i++
            elsif stringOfLetters(i) == 'D' ||stringOfLetters(i) == 'E' || stringOfLetters(i) =='F'
                    number_output+="3"
                    i++
            elsif stringOfLetters(i) == 'G' ||stringOfLetters(i) == 'H' ||stringOfLetters(i) == 'I'
                    number_output+="4"
                    i++
            elsif stringOfLetters(i) == 'J'|| stringOfLetters(i) =='K' || stringOfLetters(i)=='L'
                    number_output+="5"
                    i++
            elsif stringOfLetters(i) == 'M' || stringOfLetters(i) =='N' ||stringOfLetters(i) == 'O'
                    number_output+="6"
                    i++
            elsif stringOfLetters(i) == 'P' || stringOfLetters(i) =='Q' || stringOfLetters(i) =='R' || stringOfLetters(i) =='S'
                    number_output+="7"
                    i++
            elsif stringOfLetters(i) == 'T' || stringOfLetters(i) =='U' || stringOfLetters(i) =='V'
                    number_output+="8"
                    i++
            elsif stringOfLetters(i) == 'W' || stringOfLetters(i) =='X' || stringOfLetters(i) =='Y' || stringOfLetters(i) =='Z'
                    number_output+="9"
                    i++
            end
        end
    end
        return number_output
end

p yellow_pager("helloworld")