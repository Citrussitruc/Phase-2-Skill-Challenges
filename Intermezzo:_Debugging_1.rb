# 1.
# def say_hello(name)
#   return "hello #{(name)}"
# end

# puts say_hello("curtis")

# 2.
# def encode(plaintext, key)
#   cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
#   ciphertext_chars = plaintext.chars.map do |char|
#     (65 + cipher.find_index(char)).chr
#   end
#   return ciphertext_chars.join
# end

# def decode(ciphertext, key)
#   cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
#   plaintext_chars = ciphertext.chars.map do |char|
#     cipher[char.ord - 65]
#   end
#   return plaintext_chars.join
# end

# # Intended output:
# #
# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
# #
# puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# # => "theswiftfoxjumpedoverthelazydog"

# Challenge.

def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
      counter[char] += 1 if char != " "
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"