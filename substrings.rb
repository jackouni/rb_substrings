require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","slit", "disown", "grown","horny", "gorgeous", "houses","mouses","homes", "pawns"]
user_input = "Howdy partner, sit down! How's it going?"

def substrings(user_input, dictionary)
    occurances = Hash.new

    dictionary.each do |word|
        matches = user_input.downcase.scan(word)
        if matches.length > 0 
            occurances[word] = matches.length
        end 
    end 
    puts occurances
end 

substrings(user_input, dictionary)

