require_relative 'divisible'

describe Divisible do

  context "When the input is an Integer, it returns Success" do
    it "returns Success when it is divisible by 9" do
      expect(Divisible.new("99").divide).to be == "Success: 99 is divisible by 9"
    end
  end

  context "When the input is Float, it returns Success" do
    it "returns Success when it is divisible by 9" do
      expect(Divisible.new("99.0").divide).to be == "Success: 99.0 is divisible by 9"
    end
  end

  context "When the input is not a Number i.e it's a combination of characters, digits, and special symbols" do
    it "returns Please enter a valid number" do
      expect(Divisible.new("65$%hghgfgf*^*^1233333").divide).to be == "Please enter a valid number"
    end
  end

  context "When the input is Zero" do
    it "returns Success as 0 is divisible by 9" do
      expect(Divisible.new("0").divide).to be == "Success: 0 is divisible by 9"
    end
  end

  context "When the input starts with non-number" do
    it "returns Please enter a valid number" do
      expect(Divisible.new("Mj0.0").divide).to be == "Please enter a valid number"
    end
  end

  context "When the input contains two dots(..)" do
    it "returns Please enter a valid number" do
      expect(Divisible.new("7..8").divide).to be == "Please enter a valid number"
    end
  end

  context "When the input is Not Divisible by 9" do
    it "returns Not divisible by 9" do
      expect(Divisible.new("87575").divide).to be == "Not divisible by 9"
    end
  end

  context "When the input is very long" do
    it "returns Success when it is divisible by 9" do
      expect(Divisible.new("9999999999999999999999999999999999").divide).to be == "Success: 9999999999999999999999999999999999 is divisible by 9"
    end
  end
end
