require './caesar-cipher.rb'

RSpec.describe "Caesar Cipher" do
    it "works for a shift of 0" do
        expect(caesar_cipher("ABCD",0)).to eql("ABCD")
    end

    it "handles every lowercase letter" do
        expect(caesar_cipher("abcdefghijklmnopqrstuvwxyz",3)).to eql("defghijklmnopqrstuvwxyzabc")
    end

    it "can wrap around more than once" do
        expect(caesar_cipher("ABCD",52)).to eql("ABCD")
    end
end