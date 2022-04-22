def substring (str, dictionary)
    str1 = str.downcase.split
    a  = str1.reduce(Hash.new(0)) do |key, value|
        dictionary.each do |data|
            if value.include?(data)
                key[data] += 1
                
            end
        end
        key
    end
    p a
end


str = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring(str, dictionary)
substring("below", dictionary)