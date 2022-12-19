def hipsterfy(word)
  (word.length - 1).downto(0) do |i|
    return word[0...i] + word[i + 1..-1] if "aeiou".include?(word[i])
  end

  word
end

def vowel_counts(str)
  hash = {
    "a" => 0,
    "e" => 0,
    "i" => 0,
    "o" => 0,
    "u" => 0,
  }

  str.downcase.each_char { |char| hash[char] += 1 if hash[char] }

  hash
end

def caesar_cipher(msg, n)
  alphabet = ("a".."z").to_a
  new_msg = ""

  msg.each_char do |i|
    if alphabet.include?(i)
      old_idx = alphabet.index(i)
      new_idx = old_idx + n
      new_msg += alphabet[new_idx % 26]
    else
      new_msg += i
    end
  end

  new_msg
end
