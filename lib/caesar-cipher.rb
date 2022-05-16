def caesar_cipher(string, shift_num)

  # turn string into array of characters
  # for each character, turn into chr value then shift, then turn into ord value, then piece char back into string
  # char_arr = string.split("").map { |char| char.ord}
  
  # turn string into an array of characters
  char_arr = string.split("")
      
  # going through each character, convert into an ord value
  converted_arr = []
  char_arr.each_with_index do |char,index|


    # outer if else statement is to determine if the char is a-z, A-Z, or anything other than that
    if (char.ord >= 65 && char.ord <= 90)

      # inner if else statement is the logic for how to wrap around the letters if needed
      if char.ord + shift_num > 90
        over_counter = (char.ord + shift_num) - 90
        newChar = 64 + over_counter
      else
        newChar = char.ord + shift_num
      end
      # push ciphered character into array
      converted_arr.push(newChar.chr)
    elsif (char.ord >= 97 && char.ord <= 122)

      # inner if else statement is the logic for how to wrap around the letters if needed
      if char.ord + shift_num > 122
        over_counter = (char.ord + shift_num) - 122
        newChar = 96 + over_counter
      else
        newChar = char.ord + shift_num
      end
      # push ciphered character into array
      converted_arr.push(newChar.chr)

    else
      # push ciphered character into array
      converted_arr.push(char.chr)
    end
  end

  return converted_arr.join


end


# p caesar_cipher("What a string!", 5)