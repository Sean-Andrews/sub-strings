def substrings(string, array)
  final_count = {}
  string_as_array = string.downcase.split(" ")
  new_array = []
  string_as_array.each do |word| 
    array.each do |substring|
      if word == substring || word[substring]
        new_array.push(substring)
        final_count[substring] = new_array.count(substring)
      end      
    end
  end
     p final_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)