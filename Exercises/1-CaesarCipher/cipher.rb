def caeser_cipher(message, shift)
  index = 0
  characters = ("a".."z").to_a
  translation = {}

  [("a".."z")].each { |char_range|
    char_range.each { |char|
      translation[char] = index
      index += 1
    }
  }

  reverseTranslation = translation.invert

  encrypted = String.new

  0.upto(message.size-1) do |message_index|
    # Get the number for the letter
    if translation.has_key?(message[message_index].downcase)
      is_upper = /[[:upper:]]/.match(message[message_index])
      number_letter = translation[message[message_index].downcase]
      shifted_letter_index = (number_letter+shift)%translation.size
      encrypted += is_upper ? reverseTranslation[shifted_letter_index].upcase : reverseTranslation[shifted_letter_index]
    else
      encrypted += message[message_index]
    end
  end
  encrypted
end