def encrypt(text)
  # prepare the whole list of alphabet characters
  alphabet = ('A'..'Z').to_a
  # split the text into each characters ["H", "E", "L", "L", "O"]
  # iterate over each letter
  new_letters = text.chars.map do |letter|
    index = alphabet.index(letter)
    if index.nil? # it's not an alphabet
      # if not, keep it as is
      letter
    else
      # if it is an alphabet, shift them 3 letters back ["E", "B", "I", "I", "L"]
      alphabet[index - 3]
    end
  end

  # join the shifted characters into one string
  new_letters.join
end
