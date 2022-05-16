def substrings(string, dictionary)
  found_substrings = Hash.new(0)
  # turn word into all downcase
  string.downcase!
  # use the dictionary to match words that can be found in the word
  dictionary.select do |word|
    if string.match?(word)
      # scan for how many instances the word pops up in the string and put the number of instances in the has
      found_substrings[word] = string.scan(word).size
    end
  end
  # return found_substrings hash
  return found_substrings
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
# should return { "below" => 1, "low" =>}

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# should return { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
