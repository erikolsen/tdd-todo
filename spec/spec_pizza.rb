require 'spec_helper'

describe Pizza do
  let(:pizza) {Pizza.new}
  context "#initialize" do
    it "creates a Pizza object" do
      expect(pizza).to be_an_instance_of Pizza
    end
    xit "has a name" do
      expect(pizza.name).to eq "cheese"
    end
    xit "has a description" do
      expect(pizza.description).to eq "Gooey Cheese"
    end
    xit "has a time_baked" do
      expect(pizza.time_baked).to eq 12
    end
  end
end
