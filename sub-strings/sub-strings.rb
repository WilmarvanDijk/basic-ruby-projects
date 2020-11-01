def subStrings(stringValue, compareArray) #do something with scan and count
    stringArray = stringValue.downcase.split(" ") #split string to array + make all word downcase

    substringHash = stringArray.reduce(Hash.new(0)) do |result, word| #reduce array, result is equal to empty hash
        compareArray.each do |compareWord| #take each word from the dictionary
            if word.include?(compareWord) #check if a word from the string is equal to a word from the dictionary 
                result[compareWord] += 1 #fill hash
            end
        end
        result
    end
    substringHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts subStrings("below", dictionary)
# { "below" => 1, "low" => 1 }

puts subStrings("Howdy partner, sit down! How's it going?", dictionary) 
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }