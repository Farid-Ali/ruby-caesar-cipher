require './lib/script'

describe CaesarCipher do
  describe ".mod" do
    it "returns mod of two numbers" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.send(:mod, 3, 2)).to eql(1)
    end
  end

  describe ".code_set" do
    it "returns 65 if input is less than 97 else returns 97" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.send(:code_set, 45)).to eql(65)
    end
  end

  describe ".string_into_character_codes" do
    it "returns an array of character codes of inputed string" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.send(:string_into_character_codes, "aAbB")).to eql([97, 65, 98, 66])
    end
  end

  describe ".add_shift_factor_to_character_codes" do
    it "returns sum of character code and shift factor" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.send(:add_shift_factor_to_character_codes, "aAbB", 5)).to eql([102, 70, 103, 71])
    end
  end

  describe ".caesar_cipher" do
    it "returns encripted string aka caesar cipher string" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.send(:caesar_cipher, "hello", 5)).to eql("mjqqt")
    end
  end
end