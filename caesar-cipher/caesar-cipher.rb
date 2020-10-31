def caesarCipher(stringValue, shiftKey) 
    encryptedString = ""

    lowerAlphabet = ("a".."z").to_a
    upperAlphabet = ("A".."Z").to_a

    stringArray = stringValue.split("")

    stringArray.each_with_index do |character, index|
        encryptedString += lowerAlphabet.include?(character) ? lowerAlphabet[(lowerAlphabet.index(character) + shiftKey) % 26] :
                           upperAlphabet.include?(character) ? upperAlphabet[(upperAlphabet.index(character) + shiftKey) % 26] : character
    end

    return encryptedString
end

def runCipher
    puts "Please enter a string: "
    stringValue = gets.chomp

    puts "Please enter a key: "
    shiftKey = gets.chomp.to_i

    encryptedMessage = caesarCipher(stringValue, shiftKey)
    puts encryptedMessage
end

runCipher()