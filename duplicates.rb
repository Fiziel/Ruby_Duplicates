begin
string = "1 1 1 1 222 222 222: 222 222 33 33 33, 44 55 66 1 1 1"
substring = string.downcase.split(/[^[[:word:]'-]]+/)

WORD_COUNT = Hash.new
for word in substring do
    if word.length == 0 || WORD_COUNT.include?(word)
        next
    else
        WORD_COUNT[word] = substring.count(word)
    end
end

topThreWord = WORD_COUNT.sort_by {|k, v| v}.to_h.keys.reverse
print topThreWord[0..2]
end