class CaesarCipher

  def encript
    puts "Input the string which you want to be convert:"
    user_inputed_string = gets.chomp
    puts "Input the Shift factor:"
    user_inputed_shift_factor = gets.chomp.to_i
    self.caesar_cipher(user_inputed_string, user_inputed_shift_factor)
    #Show the result to the User
    puts "Your Inputed String: #{user_inputed_string} And Your Inputed Shift: #{user_inputed_shift_factor}"
    puts "Result: #{self.caesar_cipher(user_inputed_string, user_inputed_shift_factor)}"
  end

  private
  #Character code set
  def code_set(string_character_code)
    if string_character_code < 97
      65
    else
      97
    end
  end

  #Mod(Chaque 'modular arithmetic' to learn about this in details)
  def mod(n, m)
    (n % m + m) % m
  end

  def string_into_character_codes(string)
    #convert each character of string to character codes
    string.codepoints
  end

  def add_shift_factor_to_character_codes(user_inputed_string, user_inputed_shift_factor)
    character_codes_with_shift_factor = self.string_into_character_codes(user_inputed_string).map do |code|
      if (code >= 65 && code <= 90) || (code >= 97 && code <= 122)
        self.mod(code + user_inputed_shift_factor - self.code_set(code), 26) + self.code_set(code)
      else
        code + 0
      end
    end
  end

  #Caeser_cipher method
  def caesar_cipher(user_inputed_string, user_inputed_shift_factor)
    modified_characters = self.add_shift_factor_to_character_codes(user_inputed_string, user_inputed_shift_factor).map { |modified_code| modified_code.chr }
    #Join each modified character to a string
    new_string = modified_characters.join
  end
  
end

caesar = CaesarCipher.new
caesar.encript