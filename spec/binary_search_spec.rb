require "binary_search"

RSpec.describe "#binary_search" do
  context "when the array is empty" do
    it "returns nil" do
      array = []
      target = 3

      expect(binary_search(array, target)).to be_nil
    end
  end

  context "when the array only has one value" do
    it "returns the index of the target" do
      array = [1]
      target = 1

      expect(binary_search(array, target)).to eq(0)
    end
  end

  context "when the target is in the array" do
    it "returns the index of the target" do
      array = [1, 3, 5, 7]
      target = 3

      expect(binary_search(array, target)).to eq(1)
    end
  end

  context "when the target is not in the array" do
    it "returns nil" do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      target = 11

      expect(binary_search(array, target)).to be_nil
    end
  end
end
