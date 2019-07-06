def hipsterfy (string1)
    vowels = ['a','i','e','o','u']
    string1.reverse!
    string1.each_char.with_index do |char, i|
        if vowels.include?(char)
            string1[i]=""
            return string1.reverse!
        end
    end
    return string1.reverse!
end

def vowel_counts(string1)
    vowels = ['a','e','i','o','u']
    vowelsHash = Hash.new(0)
    string1.each_char do |char|
        if vowels.include?(char.downcase())
            vowelsHash[char.downcase()] += 1
        end
    end
    return vowelsHash
end

def caesar_cipher(message, num1)
    alphabet = ('a'..'z').to_a()
    newMessage = ""
    message.each_char do |char|
        if alphabet.include? (char)
            old_index = alphabet.find_index(char)
            newIndex = old_index + num1
            newIndex = (newIndex % 26)
            newMessage += alphabet[newIndex]
        else
            newMessage += char
        end
    end
    return newMessage
end