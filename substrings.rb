def substrings(string, dictionary)
    results = {}
    dictionary.each do |substring|
        string.downcase.split.each do |word|
            if word.length >= substring.length
                (word.length - substring.length + 1).times do |i|
                    if word.slice(i, i+substring.length) == substring
                        if results[substring] == nil
                            results[substring] = 1
                        else
                            results[substring] += 1
                        end
                    end
                end
            end
        end
    end
    results
end