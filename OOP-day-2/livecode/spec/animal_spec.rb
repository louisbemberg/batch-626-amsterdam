require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an Animal instance" do
      animal = Animal.new("Babe")
      expect(animal).to be_an(Animal)
    end
  end

  describe "#name" do
    it "returns the animal's name" do
      animal = Animal.new("Babe")
      expect(animal.name).to eq("Babe")
    end
  end

  describe "::diets" do
    it "returns the three types of diets of the animal kingdom" do
      phyla = Animal.diets
      expect(phyla.size).to eq(3)
    end
  end

  describe "#eat" do
    it "returns a sentence stating the animal is eating some food" do
      animal = Animal.new("Babe")
      sentence = animal.eat("carrot")
      expect(sentence).to eq("Babe eats a carrot")
    end
  end
end
