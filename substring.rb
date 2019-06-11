def substrings(sentence, dictionary)
    sentence = sentence.split(" ")
    count_hash = Hash.new
    def sub_substrings(word, dictionary, count_hash)
        word = word.downcase
        for x in 0..dictionary.length - 1
            if word.include? dictionary[x]
                if count_hash[dictionary[x]] == nil
                    count_hash[dictionary[x]] = 1
                else
                    count_hash[dictionary[x]] += 1
                end
            end
        end
    end
    for word in sentence
        sub_substrings(word, dictionary, count_hash)
    end

    return count_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)