#the sequencer method takes a given number and produces a set/sequence in the context of an array. 

#the very first number to be pushed within the array is the number given to the method. 

#the method makes use of an until loop that dictates the repeated use of a short conditional until the very last element within the constructed array is the integer 1. 

#if the current integer is even, the next integer to be pushed into the array will be equal to the current integer divided by 2. 

#otherwise the next integer to be pushed into the array will be equal to three times the current integer plus 1.

#finally the sequencer returns the length of the array (which is equal to the length of the set that the fed number would produce)

def sequencer(num)
    array = []
    array << num
    until array.last == 1
        if num%2 == 0 
            num = num/2
            array << num 
        else 
            num = num*3 + 1
            array << num 
        end 
    end
    return array.length
end 

#here i create a hash, where the keys are the length of the sets produced by the integers from 1 to 1000000(1000000 excluded), and the values are the corresponding numbers that produced those sets

#finally I find the highest valued key and then find the value that it corresponds to. This equates to the finding the number that produces the longest set with the given specifications
numbers = Hash.new("number_sequences")
(1...1000000).each do |num|
    numbers[sequencer(num)] = num
end 

p "The number that produces the longest set of terms is: " + numbers[numbers.keys.max].to_s

p "The length of the longest set is: " + numbers.keys.max.to_s


#--------------->>>

#Whereas the code I provide above couples a custom method along with iteration through a hash, this approach could be cleaned up by attributing the value of numbers[numbers.keys.max] and numbers.keys.max to variables. This would improve the readability 


