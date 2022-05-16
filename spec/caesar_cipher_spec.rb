require './lib/caesar-cipher'

describe "#caesar_cipher" do
  it "returns the ciphered equivalent with all lower case" do
    expect(caesar_cipher("what a string", 5)).to eql("bmfy f xywnsl")
  end

  it "returns the ciphered equivalent with all upper case" do
    expect(caesar_cipher("WHAT A STRING", 5)).to eql("BMFY F XYWNSL")
  end

  it "returns the ciphered equivalent with a shift of 5 and with punctuation" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "returns the ciphered equivalent with a shift of 3" do
    expect(caesar_cipher("What a string!", 3)).to eql("Zkdw d vwulqj!")
  end
end
