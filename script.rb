#Ask user for a string

puts "Input the string which you want to be convert:"

#Get the user inputed string
#Store the inputed string to a variable

user_inputed_string = gets.chomp
p user_inputed_string

#Ask user for a shift factor

puts "Input the Shift factor:"

#Get the user inputed shift factor
#Convert the value to integer
#Store the shift factor to a variable

user_inputed_shift_factor = gets.chomp.to_i
p user_inputed_shift_factor

## Caeser_cipher method
def caeser_cipher(user_inputed_string, user_inputed_shift_factor)

  #Split each character of the string
  #convert each character to character code
  #Store each character code to an array

  string_character_codes = user_inputed_string.codepoints.to_a
  p string_character_codes

  #Character code set

  def code_set(string_character_code)
    if string_character_code < 97
      65
    else
      97
    end
  end

  #Mod

  def mod(n, m)
    (n % m + m) % m
  end


  #Add the shift factor to each character code
  #Store the result(character code + shift factor) to an array

  character_codes_with_shift_factor = string_character_codes.map do |code|
    if (code >= 65 && code <= 90) || (code >= 97 && code <= 122)
      mod(code + user_inputed_shift_factor - code_set(code), 26) + code_set(code)
    else
      code + 0
    end
  end
  p character_codes_with_shift_factor

  #Convert each modified character code to character
  #Store each modified character to an array

  modified_characters = character_codes_with_shift_factor.map { |modified_code| modified_code.chr }
  p modified_characters

  #Join each modified character to a string
  #Store the modified string to a variable
  #Return the variable which holds the modified string

  new_string = modified_characters.join
  p new_string

end

#Show the result to the User

puts caeser_cipher(user_inputed_string, user_inputed_shift_factor)