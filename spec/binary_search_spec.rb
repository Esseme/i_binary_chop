require "binary_search"

RSpec.describe "#binary_search" do
  context "when target is in the array" do
    it "returns the index of the target" do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      target = 6

      expect(binary_search(array, target)).to eq(5)
    end
  end

  context "when target is not in the array" do
    it "return nil" do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      target = 11

      expect(binary_search(array, target)).to be_nil
    end
  end
end
