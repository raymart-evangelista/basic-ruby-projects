def substrings(string, dictionary)
  found_substrings = Hash.new(0)
  # turn word into all downcase
  string.downcase!
  # use the dictionary to match words that can be found in the word
  dictionary.select do |word|
    if string.match?(word)
      # if the matched word is already hashed, add 1 to the count else we start a new count
      if found_substrings.has_key?(word)
        found_substrings[word] += 1
      else
        found_substrings[word] = 1
      end
    end
  end
  # return found_substrings hash
  return found_substrings
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
# should return { "below" => 1, "low" =>}

p substrings("Howdy partner, sit down! How's it going?", dictionary)