def caesar_cipher(string, shift)
   chars = string.chars
   ciphertext = ""
   chars.each do |c|
        if c.match(/[a-z]/)
            val = c.ord + shift
            if val > "z".ord
            val = "a".ord + ((val - "a".ord) % 26)
        end
        ciphertext += val.chr
        elsif c.match(/[A-Z]/)
            val = c.ord + shift
            if val > "Z".ord
                val = "A".ord + ((val - "A".ord) % 26)   
            end
        ciphertext += val.chr
        else
        ciphertext += c
        end
    end
    return ciphertext
end